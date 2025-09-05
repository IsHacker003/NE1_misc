.class Lcom/android/settings/RadioInfo$18;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/android/settings/RadioInfo$18;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1337
    iget-object p1, p0, Lcom/android/settings/RadioInfo$18;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {p1, p2}, Lcom/android/settings/RadioInfo;->setImsVtProvisionedState(Z)V

    .line 1338
    return-void
.end method
