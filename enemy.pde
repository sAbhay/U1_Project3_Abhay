class Enemy
{
  float x;
  float y;
  float z;

  float velX;
  float velY;
  float velZ;

  float Width;
  float Height;
  float Depth;

  boolean killed = false;

  Enemy(float _x, float _y, float _z, float _velX, float _velY, float _velZ, float _Width, float _Height)
  {
    x = _x;
    y = _y;
    z = _z;

    velX = _velX;
    velY = _velY;
    velZ = _velZ;

    Width = _Width;
    Height = _Height;
  }

  void display()
  {
    pushMatrix();

    // Depth is the greater value between Width and Height
    if (Height > Width)
    {
      Depth = Width;
    } else 
    {
      Depth = Height;
    }

    translate(x, y, z);
    fill(255, 0, 0);
    box(Width, Height, Depth);

    popMatrix();
  }

  void move()
  {
    x += velX;
    y -= velY;
    z += velZ;
  }

  void checkIfDead()
  {
    for (int i = 0; i < b.size(); i++)
    {
      if (b.get(i).pos.z >= z - Depth/2 && b.get(i).pos.z <= z + Depth/2 && b.get(i).pos.x >= x - Width/2 && b.get(i).pos.x <= x + Width/2 && b.get(i).pos.y >= y - Height/2 && b.get(i).pos.y <= y + Height/2)
      {
        killed = true;
      }
    }
  }
}