
# Canvas

  The HTML canvas API.

## .getContext(type)

  Return a rendering context, for example _2d_ or _webgl_.
  The _same_ object is returned when invoked subsequent times.

## .toBlob(callback[, type, ...])

  Creates a Blob object representing a file containing the
  image in the canvas, and invokes a callback with a handle
  to that object.

## .toDataURL()

  Returns a data uri string.

# CanvasRenderingContext2D

  The _2d_ rendering context.

## .save()

  Save state. Mirror with a call to `.restore()`.

## .restore()

  Restores state to the previous `.save()` call.

## .scale(x, y)

  Apply scale transformation.

## .rotate(angle)

  Apply rotation transformation.

## .translate(x, y)

  Apply translation transformation.

## .fillStyle = value

  Set fill style to `value`, a CSS color string,
  `CanvasGradient`, or `CanvasPattern`.

## .strokeStyle = value

  Set fill style to `value`, a CSS color string,
  `CanvasGradient`, or `CanvasPattern`.

## .clearRect(x, y, w, h)

  Clears all pixels on the canvas in the given
  rectangle to transparent black.

## .fillRect(x, y, w, h)

  Paints the given rectangle onto the canvas,
  using the current fill style.

## .strokeRect(x, y, w, h)

  Paints the box that outlines the given rectangle onto the canvas,
  using the current stroke style.

## .measureText(str)

  Return a `TextMetrics` object with the metrics of the given `str`
  in the _current_ font.

     .width
     .actualBoundingBoxLeft
     .actualBoundingBoxRight
     .fontBoundingBoxAscent
     .fontBoundingBoxDescent
     .actualBoundingBoxAscent
     .actualBoundingBoxDescent
     .emHeightAscent
     .emHeightDescent
     .hangingBaseline
     .alphabeticBaseline
     .ideographicBaseline

## .createLinearGradient(x0, y0, x1, y1)

  Return a `CanvasGradient` object painted from `(x0, y0)` to `(x1, y1)`.

## .createRadialGradient(x0, y0, r0, x1, y1, r1)

  Return a `CanvasGradient` object that represents a radial gradient that paints along
  the cone given by the circles represented by the arguments.

# CanvasGradient

  Canvas gradient object.

## .addColorStop(offset, color)

  Add color stop at `offset` with the given `color`.

# More information

  Visit http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html