.class public Lcom/android/settings/utils/AnnotationSpan;
.super Landroid/text/style/URLSpan;
.source "AnnotationSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method public static varargs linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;
    .locals 13

    .line 57
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/Annotation;

    .line 59
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    .line 61
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 63
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 64
    const/4 v8, 0x0

    .line 65
    array-length v9, p1

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, p1, v10

    .line 66
    invoke-static {v11}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 67
    new-instance v8, Lcom/android/settings/utils/AnnotationSpan;

    invoke-static {v11}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$100(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/android/settings/utils/AnnotationSpan;-><init>(Landroid/view/View$OnClickListener;)V

    .line 68
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 71
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 72
    invoke-virtual {v0, v8}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v8, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 54
    return-void
.end method
