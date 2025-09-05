.class public Lcom/mediatek/settings/ext/DefaultWWOPJoynSettingsExt;
.super Landroid/content/ContextWrapper;
.source "DefaultWWOPJoynSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWWOPJoynSettingsExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public isJoynSettingsEnabled()Z
    .locals 2

    .line 19
    const-string v0, "@M_DefaultWWOPJoynSettingsExt"

    const-string v1, "isJoynSettingsEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    return v0
.end method
