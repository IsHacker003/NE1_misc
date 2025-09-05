.class public Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
.super Ljava/lang/Object;
.source "OverlayManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wrapper/OverlayManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayInfo"
.end annotation


# instance fields
.field public final category:Ljava/lang/String;

.field private final mEnabled:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/om/OverlayInfo;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->mEnabled:Z

    .line 94
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->category:Ljava/lang/String;

    .line 95
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->mEnabled:Z

    return v0
.end method
