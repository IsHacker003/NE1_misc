.class public Lcom/mediatek/settings/wifi/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMaxBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/mediatek/settings/wifi/Utf8ByteLengthFilter;->mMaxBytes:I

    .line 55
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 64
    nop

    .line 66
    const/4 v2, 0x0

    move/from16 v3, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x800

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v3, v1, :cond_2

    .line 67
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 68
    if-ge v10, v8, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    if-ge v10, v7, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    add-int/2addr v4, v9

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 72
    nop

    .line 74
    move v10, v2

    :goto_2
    if-ge v2, v3, :cond_7

    .line 75
    move/from16 v11, p5

    if-lt v2, v11, :cond_4

    move/from16 v12, p6

    if-lt v2, v12, :cond_3

    goto :goto_3

    .line 74
    :cond_3
    move-object/from16 v13, p4

    goto :goto_5

    .line 76
    :cond_4
    move/from16 v12, p6

    :goto_3
    move-object/from16 v13, p4

    invoke-interface {v13, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    .line 77
    if-ge v14, v8, :cond_5

    .line 78
    move v14, v9

    goto :goto_4

    :cond_5
    if-ge v14, v7, :cond_6

    move v14, v6

    goto :goto_4

    :cond_6
    move v14, v5

    :goto_4
    add-int/2addr v10, v14

    .line 74
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    :cond_7
    move-object v2, p0

    iget v2, v2, Lcom/mediatek/settings/wifi/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int/2addr v2, v10

    .line 82
    if-gtz v2, :cond_8

    .line 83
    const-string v0, ""

    return-object v0

    .line 84
    :cond_8
    const/4 v3, 0x0

    if-lt v2, v4, :cond_9

    .line 85
    return-object v3

    .line 88
    :cond_9
    move v4, v2

    move/from16 v2, p2

    :goto_6
    if-ge v2, v1, :cond_d

    .line 89
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 90
    if-ge v10, v8, :cond_a

    .line 91
    move v10, v9

    goto :goto_7

    :cond_a
    if-ge v10, v7, :cond_b

    move v10, v6

    goto :goto_7

    :cond_b
    move v10, v5

    :goto_7
    sub-int/2addr v4, v10

    .line 92
    if-gez v4, :cond_c

    .line 93
    move/from16 v10, p2

    invoke-interface {v0, v10, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 88
    :cond_c
    move/from16 v10, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 99
    :cond_d
    return-object v3
.end method
