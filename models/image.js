module.exports = (sequelize, DataTypes) => {
  const Model = sequelize.define('image', {
    'name': {
      type: DataTypes.STRING,
    },
    'file_name': {
      type: DataTypes.STRING,
    },
    'category': {
      type: DataTypes.STRING,
    },
    'updated_at': {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'image',
    underscored: true,
    timestamps: false,
    schema: process.env.DATABASE_SCHEMA,
  });

  Model.associate = (models) => {
  };

  return Model;
};

