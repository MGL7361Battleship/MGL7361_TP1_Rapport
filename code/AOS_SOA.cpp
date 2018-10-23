// Use a structure-of-arrays rather than an array-of-structures.
//instead of this:

  struct World {
      players: Vec<Player>
  }

  struct Player {
      name: String,
      health: i64,
  }
//which is a "array of structures", see Vec<Player>, you do this:
  struct World {
      player_names: Vec<String>,
      player_health: Vec<i64>,
  }
  