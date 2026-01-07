#!/system/bin/sh

MODDIR=${0%/*}
SERVICE_D="/data/adb/service.d"
STATUS_SH="$SERVICE_D/kp-next.sh"

if [ ! -d "$SERVICE_D" ] || [ ! -f "$STATUS_SH" ]; then
    mkdir -p "$SERVICE_D"
    cp "$MODDIR/status.sh" "$STATUS_SH"
    chmod 755 "$STATUS_SH"
fi
