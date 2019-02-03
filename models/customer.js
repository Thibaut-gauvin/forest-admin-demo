module.exports = (sequelize, DataTypes) => {
  const Model = sequelize.define('customer', {
    'username': {
      type: DataTypes.STRING,
    },
    'email': {
      type: DataTypes.STRING,
    },
    'password': {
      type: DataTypes.STRING,
    },
    'role': {
      type: DataTypes.STRING,
    },
    'created_at': {
      type: DataTypes.DATE,
    },
    'updated_at': {
      type: DataTypes.DATE,
    },
    'deleted_at': {
      type: DataTypes.DATE,
    },
    'last_connection_date': {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'customer',
    underscored: true,
    
    schema: process.env.DATABASE_SCHEMA,
  });

  Model.associate = (models) => {
  };

  return Model;
};

