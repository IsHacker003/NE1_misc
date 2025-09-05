.class public Lcom/mediatek/settings/ext/IWifiExt$Builder;
.super Ljava/lang/Object;
.source "IWifiExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ext/IWifiExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEdit:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getEdit()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    return v0
.end method

.method public getViews()Landroid/view/View;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 128
    return-object p0
.end method

.method public setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    .line 137
    return-object p0
.end method

.method public setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    .line 145
    return-object p0
.end method
