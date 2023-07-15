#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # get team_id
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'");
    # if not found
    if [[ -z $WINNER_ID ]]
    then
      # insert winner
      INSERT_WINNER_RESULT=$($PSQL "insert into teams(name) values('$WINNER')");
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $WINNER"
      fi
      # get new winner_id
      WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    fi

    # get team_id
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    # if not found
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_OPPONENT_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')");
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $OPPONENT"
      fi
      # get new opponent_id
      OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    fi

    # insert tuples for all columns of games relation
    INSERT_GAMES_RESULT=$($PSQL "insert into games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) values($WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')")

    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games, $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS $YEAR $ROUND"
    fi
  fi

done
