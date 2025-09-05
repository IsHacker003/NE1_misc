.class public Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;
.super Ljava/lang/Object;
.source "AssistGestureFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/gestures/AssistGestureFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public isSensorAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 37
    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    .line 32
    const/4 p1, 0x0

    return p1
.end method
