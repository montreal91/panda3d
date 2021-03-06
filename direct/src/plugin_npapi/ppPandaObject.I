/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file ppPandaObject.I
 * @author drose
 * @date 2009-07-03
 */

/**
 * Returns the p3d_object this PPPandaObject maps to.  This may be NULL if the
 * object is not fully initialized.  If not NULL, this returns a new
 * reference.
 */
inline P3D_object *PPPandaObject::
get_p3d_object() const {
  if (_p3d_object != nullptr) {
    P3D_OBJECT_INCREF(_p3d_object);
  }
  return _p3d_object;
}
