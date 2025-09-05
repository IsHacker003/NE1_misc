.class Landroid/support/graphics/drawable/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field static final STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

.field static final STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

.field public static final STYLEABLE_ANIMATOR:[I

.field public static final STYLEABLE_ANIMATOR_SET:[I

.field public static final STYLEABLE_KEYFRAME:[I

.field public static final STYLEABLE_PATH_INTERPOLATOR:[I

.field public static final STYLEABLE_PROPERTY_ANIMATOR:[I

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER:[I

.field static final STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

.field static final STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

.field static final STYLEABLE_VECTOR_DRAWABLE_PATH:[I

.field static final STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    .line 49
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    .line 70
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    .line 76
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x1010199    # @android:attr/drawable

    aput v5, v3, v4

    sput-object v3, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

    .line 80
    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

    .line 90
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    .line 103
    new-array v0, v2, [I

    const v1, 0x10102e2    # @android:attr/ordering

    aput v1, v0, v4

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    .line 108
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    .line 116
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    .line 124
    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    return-void

    :array_0
    .array-data 4
        0x1010003    # @android:attr/name
        0x1010121    # @android:attr/tint
        0x1010155    # @android:attr/height
        0x1010159    # @android:attr/width
        0x101031f    # @android:attr/alpha
        0x10103ea    # @android:attr/autoMirrored
        0x10103fb    # @android:attr/tintMode
        0x1010402    # @android:attr/viewportWidth
        0x1010403    # @android:attr/viewportHeight
    .end array-data

    :array_1
    .array-data 4
        0x1010003    # @android:attr/name
        0x10101b5    # @android:attr/pivotX
        0x10101b6    # @android:attr/pivotY
        0x1010324    # @android:attr/scaleX
        0x1010325    # @android:attr/scaleY
        0x1010326    # @android:attr/rotation
        0x101045a    # @android:attr/translateX
        0x101045b    # @android:attr/translateY
    .end array-data

    :array_2
    .array-data 4
        0x1010003    # @android:attr/name
        0x1010404    # @android:attr/fillColor
        0x1010405    # @android:attr/pathData
        0x1010406    # @android:attr/strokeColor
        0x1010407    # @android:attr/strokeWidth
        0x1010408    # @android:attr/trimPathStart
        0x1010409    # @android:attr/trimPathEnd
        0x101040a    # @android:attr/trimPathOffset
        0x101040b    # @android:attr/strokeLineCap
        0x101040c    # @android:attr/strokeLineJoin
        0x101040d    # @android:attr/strokeMiterLimit
        0x10104cb    # @android:attr/strokeAlpha
        0x10104cc    # @android:attr/fillAlpha
        0x101051e    # @android:attr/fillType
    .end array-data

    :array_3
    .array-data 4
        0x1010003    # @android:attr/name
        0x1010405    # @android:attr/pathData
    .end array-data

    :array_4
    .array-data 4
        0x1010003    # @android:attr/name
        0x10101cd    # @android:attr/animation
    .end array-data

    :array_5
    .array-data 4
        0x1010141    # @android:attr/interpolator
        0x1010198    # @android:attr/duration
        0x10101be    # @android:attr/startOffset
        0x10101bf    # @android:attr/repeatCount
        0x10101c0    # @android:attr/repeatMode
        0x10102de    # @android:attr/valueFrom
        0x10102df    # @android:attr/valueTo
        0x10102e0    # @android:attr/valueType
    .end array-data

    :array_6
    .array-data 4
        0x10102de    # @android:attr/valueFrom
        0x10102df    # @android:attr/valueTo
        0x10102e0    # @android:attr/valueType
        0x10102e1    # @android:attr/propertyName
    .end array-data

    :array_7
    .array-data 4
        0x1010024    # @android:attr/value
        0x1010141    # @android:attr/interpolator
        0x10102e0    # @android:attr/valueType
        0x10104d8    # @android:attr/fraction
    .end array-data

    :array_8
    .array-data 4
        0x10102e1    # @android:attr/propertyName
        0x1010405    # @android:attr/pathData
        0x1010474    # @android:attr/propertyXName
        0x1010475    # @android:attr/propertyYName
    .end array-data

    :array_9
    .array-data 4
        0x10103fc    # @android:attr/controlX1
        0x10103fd    # @android:attr/controlY1
        0x10103fe    # @android:attr/controlX2
        0x10103ff    # @android:attr/controlY2
        0x1010405    # @android:attr/pathData
    .end array-data
.end method
