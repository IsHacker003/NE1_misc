.class Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiCallingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 246
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$302(Z)Z

    .line 247
    return-void
.end method
