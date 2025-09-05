.class public Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
.super Ljava/lang/Object;
.source "AnnotationSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/AnnotationSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkInfo"
.end annotation


# instance fields
.field private final mActionable:Ljava/lang/Boolean;

.field private final mAnnotation:Ljava/lang/String;

.field private final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    .line 96
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    nop

    .line 97
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 105
    :cond_2
    new-instance p1, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$LinkInfo$z7jQ60cPKy5FsRC4nTEr8I88qP0;

    invoke-direct {p1, p3}, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$LinkInfo$z7jQ60cPKy5FsRC4nTEr8I88qP0;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    .line 113
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    .line 91
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    const-string p1, "AnnotationSpan.LinkInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void
.end method


# virtual methods
.method public isActionable()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
