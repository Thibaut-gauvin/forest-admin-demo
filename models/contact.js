module.exports = (sequelize, DataTypes) => {
  const Model = sequelize.define('contact', {
    'name': {
      type: DataTypes.STRING,
    },
    'email': {
      type: DataTypes.STRING,
    },
    'coordinate': {
      type: DataTypes.STRING,
    },
    'message': {
      type: DataTypes.STRING,
    },
    'created_at': {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'contact',
    underscored: true,
    timestamps: false,
    schema: process.env.DATABASE_SCHEMA,
  });

  Model.associate = (models) => {
  };

  return Model;
};

