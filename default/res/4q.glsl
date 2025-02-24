uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
attribute vec4 aPosition;
attribute vec4 aTextureCoord;
varying highp vec2 vTextureCoord;

void main () {
    //vTextureCoord = (uSTMatrix * aTextureCoord).xy;
    vTextureCoord = aTextureCoord.xy;
    gl_Position = uMVPMatrix * aPosition;
}
