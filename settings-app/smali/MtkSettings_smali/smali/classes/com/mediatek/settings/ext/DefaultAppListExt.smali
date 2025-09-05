.class public Lcom/mediatek/settings/ext/DefaultAppListExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAppListExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAppListExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAppListExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    const-string p1, "DefaultAppListExt"

    const-string v0, "constructor\n"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method


# virtual methods
.method public addLayoutAppView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 25
    return-object p1
.end method

.method public setAppListItem(Ljava/lang/String;I)V
    .locals 0

    .line 27
    return-void
.end method
