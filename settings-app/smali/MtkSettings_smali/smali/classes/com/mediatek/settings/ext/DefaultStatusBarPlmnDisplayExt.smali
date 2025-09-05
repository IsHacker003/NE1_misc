.class public Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;
.super Landroid/content/ContextWrapper;
.source "DefaultStatusBarPlmnDisplayExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultStatusBarPlmnDisplayExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 12
    const-string p1, "@M_DefaultStatusBarPlmnDisplayExt"

    const-string v0, "Into DefaultStatusBarPlmnPlugin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method


# virtual methods
.method public createCheckBox(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 0

    .line 16
    const-string p1, "@M_DefaultStatusBarPlmnDisplayExt"

    const-string p2, "Into Default createCheckBox"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
