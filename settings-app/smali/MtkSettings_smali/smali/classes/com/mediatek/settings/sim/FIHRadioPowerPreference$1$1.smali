.class Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;
.super Ljava/lang/Object;
.source "FIHRadioPowerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;Z)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iput-boolean p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-boolean p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;->val$isChecked:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioOn(Z)V

    .line 128
    return-void
.end method
