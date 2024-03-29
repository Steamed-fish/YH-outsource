/*
 * Zoom In/Out Sliders Full Collection  v3.5
 *
 * Copyright 2012-2014, LambertGroup
 * 
 */

(function (e) {
    function s(a) {
        var b = "cubic-bezier(0.250, 0.250, 0.750, 0.750)";
        switch (a) {
            case "linear":
                b = "cubic-bezier(0.250, 0.250, 0.750, 0.750)";
                break;
            case "swing":
                b = "cubic-bezier(0.250, 0.100, 0.250, 1.000)";
                break;
            case "ease":
                b = "cubic-bezier(0.250, 0.100, 0.250, 1.000)";
                break;
            case "ease-in":
                b = "cubic-bezier(0.420, 0.000, 1.000, 1.000)";
                break;
            case "ease-out":
                b = "cubic-bezier(0.000, 0.000, 0.580, 1.000)";
                break;
            case "ease-in-out":
                b = "cubic-bezier(0.420, 0.000, 0.580, 1.000)";
                break;
            case "easeInQuad":
                b = "cubic-bezier(0.550, 0.085, 0.680, 0.530)";
                break;
            case "easeOutQuad":
                b = "cubic-bezier(0.250, 0.460, 0.450, 0.940)";
                break;
            case "easeInOutQuad":
            case "easeInCubic":
                b = "cubic-bezier(0.550, 0.055, 0.675, 0.190)";
                break;
            case "easeOutCubic":
                b = "cubic-bezier(0.215, 0.610, 0.355, 1.000)";
                break;
            case "easeInOutCubic":
                b = "cubic-bezier(0.645, 0.045, 0.355, 1.000)";
                break;
            case "easeInQuart":
                b = "cubic-bezier(0.895, 0.030, 0.685, 0.220)";
                break;
            case "easeOutQuart":
                b = "cubic-bezier(0.165, 0.840, 0.440, 1.000)";
                break;
            case "easeInOutQuart":
                b = "cubic-bezier(0.770, 0.000, 0.175, 1.000)";
                break;
            case "easeInQuint":
                b = "cubic-bezier(0.755, 0.050, 0.855, 0.060)";
                break;
            case "easeOutQuint":
                b = "cubic-bezier(0.230, 1.000, 0.320, 1.000)";
                break;
            case "easeInOutQuint":
                b = "cubic-bezier(0.860, 0.000, 0.070, 1.000)";
                break;
            case "easeInSine":
                b = "cubic-bezier(0.470, 0.000, 0.745, 0.715)";
                break;
            case "easeOutSine":
                b = "cubic-bezier(0.390, 0.575, 0.565, 1.000)";
                break;
            case "easeInOutSine":
                b = "cubic-bezier(0.445, 0.050, 0.550, 0.950)";
                break;
            case "easeInExpo":
                b = "cubic-bezier(0.950, 0.050, 0.795, 0.035)";
                break;
            case "easeOutExpo":
                b = "cubic-bezier(0.190, 1.000, 0.220, 1.000)";
                break;
            case "easeInOutExpo":
                b = "cubic-bezier(1.000, 0.000, 0.000, 1.000)";
                break;
            case "easeInCirc":
                b = "cubic-bezier(0.600, 0.040, 0.980, 0.335)";
                break;
            case "easeOutCirc":
                b = "cubic-bezier(0.075, 0.820, 0.165, 1.000)";
                break;
            case "easeInOutCirc":
                b = "cubic-bezier(0.785, 0.135, 0.150, 0.860)";
                break;
            case "easeInBack":
                b = "cubic-bezier(0.600, -0.280, 0.735, 0.045)";
                break;
            case "easeOutBack":
                b = "cubic-bezier(0.175, 0.885, 0.320, 1.275)";
                break;
            case "easeInOutBack":
                b = "cubic-bezier(0.680, -0.550, 0.265, 1.550)"
        }
        return b
    }
    function G(a) {
        var b = E();
        return_str = a;
        if (-1 != b && 10 > b)
            switch (a) {
                case "ease":
                    return_str = "swing";
                    break;
                case "ease-in":
                    return_str = "easeInQuad";
                    break;
                case "ease-out":
                    return_str = "easeOutQuad";
                    break;
                case "ease-in-out":
                    return_str = "easeInOutQuad";
                    break;
                default:
                    return_str = "swing"
            }
        return return_str
    }
    function S(a, b, c) {
        var p = E();
        c.responsive && (newCss = "", -1 != a.css("font-size").lastIndexOf("px") ? (fontSize = a.css("font-size").substr(0, a.css("font-size").lastIndexOf("px")), newCss += "font-size:" + fontSize / (c.origWidth / c.width) + "px;") : -1 != a.css("font-size").lastIndexOf("em") && (fontSize = a.css("font-size").substr(0, a.css("font-size").lastIndexOf("em")), newCss += "font-size:" + fontSize / (c.origWidth / c.width) + "em;"), -1 != a.css("line-height").lastIndexOf("px") ? (lineHeight = a.css("line-height").substr(0, a.css("line-height").lastIndexOf("px")), newCss += "line-height:" + lineHeight / (c.origWidth / c.width) + "px;") : -1 != a.css("line-height").lastIndexOf("em") && (lineHeight = a.css("line-height").substr(0, a.css("line-height").lastIndexOf("em")), newCss += "line-height:" + lineHeight / (c.origWidth / c.width) + "em;"), a.wrapInner('<div class="newFS" />'));
        theIframe = a.find("iframe:first");
        if (null != theIframe.width() && c.responsive) {
            theW = theIframe.width();
            theH = theIframe.height();
            if ("" == b.iFrameArr[a.index()] || void 0 == b.iFrameArr[a.index()])
                b.iFrameArr[a.index()] = theW + ";" + theH;
            iFrameDimensions = b.iFrameArr[a.index()].split(";");
            theIframe.css({width: parseInt(iFrameDimensions[0] / (c.origWidth / c.width), 10), height: parseInt(iFrameDimensions[1] / (c.origWidth / c.width), 10)})
        }
        var f, n, m, h, g;
        f = a.attr("data-final-left");
        n = a.attr("data-final-top");
        c.responsive && (f = parseInt(f / (c.origWidth / c.width), 10), n = parseInt(n / (c.origWidth / c.width), 10));
        var l = c.defaultEasing;
        "" != a.attr("data-easing") && void 0 != a.attr("data-easing") && (l = a.attr("data-easing"));
        l = G(l);
        m = 1;
        !0 == b.isVideoPlaying && (m = 0);
        cur_skew = "0deg,0deg";
        void 0 != a.attr("data-final-skew") && "" != a.attr("data-final-skew") && (cur_skew = a.attr("data-final-skew"));
        cur_scale = "1";
        void 0 != a.attr("data-final-scale") && "" != a.attr("data-final-scale") && (cur_scale = a.attr("data-final-scale"));
        -1 != p && 10 > p ? (a.css({"-webkit-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "skew(" + cur_skew + ") scale(" + cur_scale + ")"}), a.stop().animate({opacity: m, left: f + "px", top: n + "px"}, 1E3 * a.attr("data-duration"), l, function () {
            !0 == b.isVideoPlaying && e(b.currentImg.attr("data-text-id")).children().css("opacity", 0);
            void 0 != a.attr("data-intermediate-left") && "" != a.attr("data-intermediate-left") && (h = a.attr("data-intermediate-left"), g = a.attr("data-intermediate-top"), c.responsive && (h = parseInt(h / (c.origWidth / c.width), 10), g = parseInt(g / (c.origWidth / c.width), 10)), b.timeouts_arr[b.timeouts_arr.length] = setTimeout(function () {
                cur_skew = "0deg,0deg";
                void 0 != a.attr("data-intermediate-skew") && "" != a.attr("data-intermediate-skew") && (cur_skew = a.attr("data-intermediate-skew"));
                cur_scale = "1";
                void 0 != a.attr("data-intermediate-scale") && "" != a.attr("data-intermediate-scale") && (cur_scale = a.attr("data-intermediate-scale"));
                a.css({"-webkit-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "skew(" + cur_skew + ") scale(" + cur_scale + ")"});
                a.stop().animate({opacity: m, left: h + "px", top: g + "px"}, 1E3 * a.attr("data-intermediate-duration"), G(a.attr("data-intermediate-easing")), function () {
                })
            }, 1E3 * a.attr("data-intermediate-delay")), 8 == p && a.find("img:first").is("img") && a.find("img:first").animate({opacity: m}, 1E3 * a.attr("data-intermediate-duration"), G(a.attr("data-intermediate-easing")), function () {
            }))
        }), 8 == p && a.find("img:first").is("img") && a.find("img:first").animate({opacity: m}, 1E3 * a.attr("data-duration"), l, function () {
        })) : (a.css({opacity: m, "-webkit-transform": "translate(" + f + "px," + n + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "translate(" + f + "px," + n + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "translate(" + f + "px," + n + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "translate(" + f + "px," + n + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "translate(" + f + "px," + n + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-webkit-transition-duration": a.attr("data-duration") + "s", "-moz-transition-duration": a.attr("data-duration") + "s", "-ms-transition-duration": a.attr("data-duration") + "s", "-o-transition-duration": a.attr("data-duration") + "s", "transition-duration": a.attr("data-duration") + "s", "-webkit-transition-timing-function": s(l), "-moz-transition-timing-function": s(l), "-ms-transition-timing-function": s(l), "-o-transition-timing-function": s(l), "transition-timing-function": s(l)}), void 0 != a.attr("data-intermediate-left") && "" != a.attr("data-intermediate-left") && (h = a.attr("data-intermediate-left"), g = a.attr("data-intermediate-top"), c.responsive && (h = parseInt(h / (c.origWidth / c.width), 10), g = parseInt(g / (c.origWidth / c.width), 10)), b.timeouts_arr[b.timeouts_arr.length] = setTimeout(function () {
            cur_skew = "0deg,0deg";
            void 0 != a.attr("data-intermediate-skew") && "" != a.attr("data-intermediate-skew") && (cur_skew = a.attr("data-intermediate-skew"));
            cur_scale = "1";
            void 0 != a.attr("data-intermediate-scale") && "" != a.attr("data-intermediate-scale") && (cur_scale = a.attr("data-intermediate-scale"));
            a.css({"-webkit-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-webkit-transition-duration": a.attr("data-intermediate-duration") + "s", "-moz-transition-duration": a.attr("data-intermediate-duration") + "s", "-ms-transition-duration": a.attr("data-intermediate-duration") + "s", "-o-transition-duration": a.attr("data-intermediate-duration") + "s", "transition-duration": a.attr("data-intermediate-duration") + "s", "-webkit-transition-timing-function": s(a.attr("data-intermediate-easing")), "-moz-transition-timing-function": s(a.attr("data-intermediate-easing")), "-ms-transition-timing-function": s(a.attr("data-intermediate-easing")), "-o-transition-timing-function": s(a.attr("data-intermediate-easing")), "transition-timing-function": s(a.attr("data-intermediate-easing"))})
        }, 1E3 * (parseFloat(a.attr("data-duration")) + parseFloat(a.attr("data-intermediate-delay"))))))
    }
    function L(a, b, c, p, f, n, m) {
        var h = E();
        e(a.currentImg.attr("data-text-id")).css("display", "block");
        b = e(b.attr("data-text-id")).children();
        var g, l, r = 0;
        currentText_arr = [];
        m && e(".newFS", f).contents().unwrap();
        b.each(function () {
            currentText_arr[r] = e(this);
            var b = currentText_arr[r];
            m ? b.css({display: "none", opacity: 0}) : b.css({display: "block"});
            g = b.attr("data-initial-left");
            l = b.attr("data-initial-top");
            c.responsive && (g = parseInt(g / (c.origWidth / c.width), 10), l = parseInt(l / (c.origWidth / c.width), 10));
            cur_skew = "0deg,0deg";
            void 0 != b.attr("data-initial-skew") && "" != b.attr("data-initial-skew") && (cur_skew = b.attr("data-initial-skew"));
            cur_scale = "1";
            void 0 != b.attr("data-initial-scale") && "" != b.attr("data-initial-scale") && (cur_scale = b.attr("data-initial-scale"));
            -1 != h && 10 > h ? (b.css({opacity: parseFloat(b.attr("data-fade-start")) / 100, left: g + "px", top: l + "px", "-webkit-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "skew(" + cur_skew + ") scale(" + cur_scale + ")"}), 8 == h && b.find("img:first").is("img") && b.find("img:first").css("opacity", parseFloat(b.attr("data-fade-start")) / 100)) : b.css({opacity: parseFloat(b.attr("data-fade-start")) / 100, "-webkit-transform": "translate(" + g + "px," + l + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "translate(" + g + "px," + l + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "translate(" + g + "px," + l + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "translate(" + g + "px," + l + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "translate(" + g + "px," + l + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-webkit-transition-duration": "0s", "-moz-transition-duration": "0s", "-ms-transition-duration": "0s", "-o-transition-duration": "0s", "transition-duration": "0s"});
            m || (a.timeouts_arr[a.timeouts_arr.length] = setTimeout(function () {
                S(b, a, c)
            }, 1E3 * b.attr("data-delay")));
            r++
        })
    }
    function Z(a, b, c, p) {
        var f = E();
        c = e(a.currentImg.attr("data-text-id")).children();
        var n = 0;
        currentText_arr = [];
        c.each(function () {
            currentText_arr[n] = e(this);
            var c = currentText_arr[n], h = b.defaultExitLeft;
            void 0 != c.attr("data-exit-left") && "" != c.attr("data-exit-left") && (h = parseInt(c.attr("data-exit-left") / (b.origWidth / b.width), 10));
            var g = b.defaultExitTop;
            void 0 != c.attr("data-exit-top") && "" != c.attr("data-exit-top") && (g = parseInt(c.attr("data-exit-top") / (b.origWidth / b.width), 10));
            var l = b.defaultExitDuration;
            void 0 != c.attr("data-exit-duration") && "" != c.attr("data-exit-duration") && (l = parseFloat(c.attr("data-exit-duration")));
            var p = b.defaultExitDelay;
            void 0 != c.attr("data-exit-delay") && "" != c.attr("data-exit-delay") && (p = parseFloat(c.attr("data-exit-delay")));
            var t = b.defaultExitFade;
            void 0 != c.attr("data-exit-fade") && "" != c.attr("data-exit-fade") && (t = parseFloat(c.attr("data-exit-fade")));
            var q = b.defaultExitEasing;
            void 0 != c.attr("data-exit-easing") && "" != c.attr("data-exit-easing") && (q = c.attr("data-exit-easing"));
            q = G(q);
            q = b.defaultExitOFF.toString();
            void 0 != c.attr("data-exit-off") && "" != c.attr("data-exit-off") && (q = c.attr("data-exit-off"));
            b.fadeSlides && (q = "false");
            "true" == q && (l = 0);
            var B = b.defaultExitEasing;
            "" != c.attr("data-exit-easing") && void 0 != c.attr("data-exit-easing") && (B = c.attr("data-exit-easing"));
            B = G(B);
            theIframe = c.find("iframe:first");
            null != theIframe.width() && (theIframe[0].src = theIframe[0].src);
            0 < l ? a.timeouts_arr[a.timeouts_arr.length] = setTimeout(function () {
                cur_skew = "0deg,0deg";
                void 0 != c.attr("data-exit-skew") && "" != c.attr("data-exit-skew") && (cur_skew = c.attr("data-exit-skew"));
                cur_scale = "1";
                void 0 != c.attr("data-exit-scale") && "" != c.attr("data-exit-scale") && (cur_scale = c.attr("data-exit-scale"));
                -1 != f && 10 > f ? (c.css({"-webkit-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "skew(" + cur_skew + ") scale(" + cur_scale + ")"}), c.stop().animate({opacity: t, left: h + "px", top: g + "px"}, 1E3 * l, B, function () {
                }), 8 == f && c.find("img:first").is("img") && c.find("img:first").animate({opacity: t}, 1E3 * l, B, function () {
                })) : c.css({opacity: t, "-webkit-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-moz-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-ms-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-o-transform": "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", transform: "translate(" + h + "px," + g + "px) skew(" + cur_skew + ") scale(" + cur_scale + ")", "-webkit-transition-duration": l + "s", "-moz-transition-duration": l + "s", "-ms-transition-duration": l + "s", "-o-transition-duration": l + "s", "transition-duration": l + "s", "-webkit-transition-timing-function": s(B), "-moz-transition-timing-function": s(B), "-ms-transition-timing-function": s(B), "-o-transition-timing-function": s(B), "transition-timing-function": s(B)})
            }, 1E3 * p) : "false" == q && c.css({display: "none"});
            n++
        })
    }
    function I(a) {
        if (a)
            for (var b in a)
                a[b] && clearTimeout(a[b]);
        a.length = 0
    }
    function M(a) {
        if (a)
            for (var b in a)
                a[b] && clearInterval(a[b]);
        a.length = 0
    }
    function $(a, b) {
        if (a)
            for (var c in a)
                a[c] && (a[c] = function () {
                });
        a.length = 0;
        b.rotationDurationArr.length = 0
    }
    function N(a, b, c, p, f) {
        var n = E();
        -1 == a && (a = 0);
        var m = e(f[a]);
        f = b.horizontalPosition;
        void 0 != m.attr("data-horizontalPosition") && "" != m.attr("data-horizontalPosition") && (f = m.attr("data-horizontalPosition"));
        var h = b.verticalPosition;
        void 0 != m.attr("data-verticalPosition") && "" != m.attr("data-verticalPosition") && (h = m.attr("data-verticalPosition"));
        var g = b.initialZoom;
        void 0 != m.attr("data-initialZoom") && "" != m.attr("data-initialZoom") && (g = Number(m.attr("data-initialZoom")));
        var l = b.finalZoom;
        void 0 != m.attr("data-finalZoom") && "" != m.attr("data-finalZoom") && (l = Number(m.attr("data-finalZoom")));
        p = p[a].split(";");
        b.responsive && (p[0] /= b.origWidth / b.width, p[1] /= b.origWidth / b.width);
        b.width100Proc && b.height100Proc && p[1] * Math.min(l, g) < b.height && (newH = b.height / Math.min(l, g), newW = p[0] / p[1] * newH, p[0] = newW, p[1] = newH);
        a = e("#contentHolderUnit_" + a, c).find("img:first");
        parseInt(l * p[0], 10);
        parseInt(l * p[1], 10);
        a.css({width: parseInt(g * p[0], 10) + "px", height: parseInt(g * p[1], 10) + "px"});
        c = 0;
        switch (f) {
            case "left":
                c = 0;
                break;
            case "center":
                c = (b.width - parseInt(g * p[0], 10)) / 2;
                break;
            case "right":
                c = b.width - parseInt(g * p[0], 10);
                break;
            default:
                c = 0
        }
        l = 0;
        switch (h) {
            case "top":
                l = -2;
                break;
            case "center":
                l = (b.height - parseInt(g * p[1], 10)) / 2;
                break;
            case "bottom":
                l = b.height - parseInt(g * p[1], 10) + 2;
                break;
            default:
                l = 0
        }
        a.css({left: parseInt(c, 10) + "px", top: parseInt(l, 10) + "px", opacity: b.initialOpacity});
        (-1 == n || -1 != n && 10 <= n) && a.css({"-webkit-transform-origin": f + " " + h, "-moz-transform-origin": f + " " + h, "-ms-transform-origin": f + " " + h, "-o-transform-origin": f + " " + h, "transform-origin": f + " " + h})
    }
    function T(a, b, c, p, f) {
        f = e(f[a.current_img_no]);
        var n = E(), m = b.horizontalPosition;
        void 0 != f.attr("data-horizontalPosition") && "" != f.attr("data-horizontalPosition") && (m = f.attr("data-horizontalPosition"));
        var h = b.verticalPosition;
        void 0 != f.attr("data-verticalPosition") && "" != f.attr("data-verticalPosition") && (h = f.attr("data-verticalPosition"));
        var g = b.duration;
        void 0 != f.attr("data-duration") && "" != f.attr("data-duration") && (g = Number(f.attr("data-duration")));
        var l = b.initialZoom;
        void 0 != f.attr("data-initialZoom") && "" != f.attr("data-initialZoom") && (l = Number(f.attr("data-initialZoom")));
        var r = b.finalZoom;
        void 0 != f.attr("data-finalZoom") && "" != f.attr("data-finalZoom") && (r = Number(f.attr("data-finalZoom")));
        a.current_imgInside = e("#contentHolderUnit_" + a.current_img_no, c).find("img:first");
        a.previous_imgInside = e("#contentHolderUnit_" + a.previous_current_img_no, c).find("img:first");
        var t = p[a.current_img_no].split(";");
        b.responsive && (t[0] /= b.origWidth / b.width, t[1] /= b.origWidth / b.width);
        l != r ? -1 != n && 10 > n ? (b.width100Proc && (g += b.durationIEfix), a.curZoom = 1, zoomStep = 0, a.cur_marginLeft = 0, a.cur_marginTop = 0, -1 != n && 10 > n && clearInterval(a.msiInterval), a.msiInitialTime = (new Date).getTime(), a.msiInterval = setInterval(function () {
            nowx = (new Date).getTime();
            nowx - a.msiInitialTime > 1E3 * g ? clearInterval(a.msiInterval) : (zoomStep = (nowx - a.msiInitialTime) * Math.abs(l - r) / (1E3 * g), a.curZoom = l <= r ? 1 + zoomStep : 1 - zoomStep, "center" == m ? a.cur_marginLeft = (1 - a.curZoom) * l * t[0] / 2 : "right" == m && (a.cur_marginLeft = (1 - a.curZoom) * l * t[0]), "center" == h ? a.cur_marginTop = (1 - a.curZoom) * l * t[1] / 2 : "bottom" == h && (a.cur_marginTop = (1 - a.curZoom) * l * t[1]), a.current_imgInside.css({filter: 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=' + a.curZoom + ", M12=0, M21=0, M22=" + a.curZoom + ", Dx=" + a.cur_marginLeft + ",Dy=" + a.cur_marginTop + ")"}))
        }, 25)) : (rotate_aux = "", -1 != n && 11 <= n && (rotate_aux = " rotate(0.1deg)"), zoomVal = r / l, b = b.zoomEasing, "" != f.attr("data-zoomEasing") && void 0 != f.attr("data-zoomEasing") && (b = f.attr("data-zoomEasing")), a.current_imgInside.css({"-webkit-transition-duration": g + "s", "-moz-transition-duration": g + "s", "-ms-transition-duration": g + "s", "-o-transition-duration": g + "s", "transition-duration": g + "s", "-webkit-transition-timing-function": s(b), "-moz-transition-timing-function": s(b), "-ms-transition-timing-function": s(b), "-o-transition-timing-function": s(b), "transition-timing-function": s(b), "-webkit-transform": "scale(" + zoomVal + ")" + rotate_aux + "", "-moz-transform": "scale(" + zoomVal + ")" + rotate_aux + "", "-ms-transform": "scale(" + zoomVal + ")" + rotate_aux + "", "-o-transform": "scale(" + zoomVal + ")", transform: "scale(" + zoomVal + ")" + rotate_aux + "", perspective: "0", "-webkit-perspective": "0"})) : -1 != n && 10 > n && (clearInterval(a.msiInterval), a.current_imgInside.css("filter", 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=1, M12=0, M21=0, M22=1, Dx=0, Dy=0)'))
    }
    function W(a, b) {
        nowx = (new Date).getTime();
        !a.mouseOverBanner && b.showCircleTimer && (a.ctx.clearRect(0, 0, a.canvas.width, a.canvas.height), a.ctx.beginPath(), a.ctx.globalAlpha = b.behindCircleAlpha / 100, a.ctx.arc(b.circleRadius + 2 * b.circleLineWidth, b.circleRadius + 2 * b.circleLineWidth, b.circleRadius, 0, 2 * Math.PI, !1), a.ctx.lineWidth = b.circleLineWidth + 2, a.ctx.strokeStyle = b.behindCircleColor, a.ctx.stroke(), a.ctx.beginPath(), a.ctx.globalAlpha = b.circleAlpha / 100, a.ctx.arc(b.circleRadius + 2 * b.circleLineWidth, b.circleRadius + 2 * b.circleLineWidth, b.circleRadius, 0, (a.timeElapsed + nowx - a.arcInitialTime) / 1E3 * 2 / a.autoPlay * Math.PI, !1), a.ctx.lineWidth = b.circleLineWidth, a.ctx.strokeStyle = b.circleColor, a.ctx.stroke())
    }
    function K(a, b, c, p, f, n, m, h, g, l, r, t, q, B, w, u) {
        var v = E(), s = !0;
        if (!c.loop && b.current_img_no + a >= b.total_images || !c.loop && 0 > b.current_img_no + a)
            s = !1;
        s && !b.slideIsRunning && b.firstLoadingComplete && (b.slideIsRunning = !0, I(b.timeouts_arr), M(b.continuouseIntervalIDs), $(b.rotationFunctionsArr, b), Z(b, c, n, m), b.arcInitialTime = (new Date).getTime(), b.timeElapsed = 0, c.showCircleTimer && (clearInterval(b.intervalID), b.ctx.clearRect(0, 0, b.canvas.width, b.canvas.height), b.ctx.beginPath(), b.ctx.globalAlpha = c.behindCircleAlpha / 100, b.ctx.arc(c.circleRadius + 2 * c.circleLineWidth, c.circleRadius + 2 * c.circleLineWidth, c.circleRadius, 0, 2 * Math.PI, !1), b.ctx.lineWidth = c.circleLineWidth + 2, b.ctx.strokeStyle = c.behindCircleColor, b.ctx.stroke(), b.ctx.beginPath(), b.ctx.globalAlpha = c.circleAlpha / 100, b.ctx.arc(c.circleRadius + 2 * c.circleLineWidth, c.circleRadius + 2 * c.circleLineWidth, c.circleRadius, 0, 0, !1), b.ctx.lineWidth = c.circleLineWidth, b.ctx.strokeStyle = c.circleColor, b.ctx.stroke(), b.intervalID = setInterval(function () {
            W(b, c)
        }, 125)), b.bottomNavClicked || (b.previous_current_img_no = b.current_img_no), b.bottomNavClicked = !1, "opportune" == c.skin && e(p[b.current_img_no]).removeClass("bottomNavButtonON"), "opportune" != c.skin && e(t[b.current_img_no]).removeClass("thumbsHolder_ThumbON"), l.css("display", "none"), b.current_img_no = b.current_img_no + a >= b.total_images ? 0 : 0 > b.current_img_no + a ? b.total_images - 1 : b.current_img_no + a, X(f, b, c), "opportune" == c.skin && e(p[b.current_img_no]).addClass("bottomNavButtonON"), "opportune" != c.skin && (e(t[b.current_img_no]).addClass("thumbsHolder_ThumbON"), currentCarouselLeft = q.css("left").substr(0, q.css("left").lastIndexOf("px")), 0 === b.current_img_no || b.current_img_no === b.total_images - 1 ? Q(0, q, B, w, c, u, b) : Q(1001, q, B, w, c, u, b)), setTimeout(function () {
            b.currentImg = e(f[b.current_img_no]);
            T(b, c, g, r, f)
        }, 100), c.fadeSlides ? (e("#contentHolderUnit_" + b.current_img_no, g).css({opacity: 1, "z-index": 0, display: "block"}), e("#contentHolderUnit_" + b.previous_current_img_no, g).css({"z-index": 1, display: "block"}), e("#contentHolderUnit_" + b.previous_current_img_no, g).animate({opacity: 0}, 1E3 * c.scrollSlideDuration, c.scrollSlideEasing, function () {
            b.slideIsRunning = !1;
            c.fadeSlides && (e("#contentHolderUnit_" + b.current_img_no, g).css({"z-index": 1}), e("#contentHolderUnit_" + b.previous_current_img_no, g).css({"z-index": 0, display: "none"}));
            "true" == b.currentImg.attr("data-video") && l.css("display", "block");
            e("#contentHolderUnit_" + b.previous_current_img_no, g).html(e(f[b.previous_current_img_no]).html());
            N(b.previous_current_img_no, c, g, b.origImgsDimensions, f);
            I(b.timeouts_arr);
            L(b, e(f[b.previous_current_img_no]), c, n, g, m, !0);
            L(b, b.currentImg, c, n, g, m, !1);
            -1 != v && 10 > v && b.previous_imgInside.css("filter", 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=1, M12=0, M21=0, M22=1, Dx=0, Dy=0)')
        })) : h.animate({left: -1 * b.current_img_no * c.width + "px"}, 1E3 * c.scrollSlideDuration, c.scrollSlideEasing, function () {
            b.slideIsRunning = !1;
            "true" == b.currentImg.attr("data-video") && l.css("display", "block");
            e("#contentHolderUnit_" + b.previous_current_img_no, g).html(e(f[b.previous_current_img_no]).html());
            N(b.previous_current_img_no, c, g, b.origImgsDimensions, f);
            I(b.timeouts_arr);
            L(b, e(f[b.previous_current_img_no]), c, n, g, m, !0);
            L(b, b.currentImg, c, n, g, m, !1);
            -1 != v && 10 > v && b.previous_imgInside.css("filter", 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=1, M12=0, M21=0, M22=1, Dx=0, Dy=0)')
        }), 0 < b.autoPlay && 1 < b.total_images && !b.mouseOverBanner && (b.timeoutID = setTimeout(function () {
            K(1, b, c, p, f, n, m, h, g, l, r, t, q, B, w, u)
        }, 1E3 * b.autoPlay)))
    }
    function R(a, b, c, e, f) {
        b = c.origImgsDimensions[b].split(";");
        e.responsive && (b[0] /= e.origWidth / e.width, b[1] /= e.origWidth / e.width);
        a.width(b[0]);
        a.height(b[1]);
        f && e.width100Proc && e.height100Proc && a.css({position: "relative", left: parseInt(e.width - a.width(), 10) + "px", top: parseInt(e.height - a.height(), 10) + "px"})
    }
    function aa(a, b, c, p, f, n, m) {
        c.responsive && (imgInside = e("#contentHolderUnit_" + a, f).find("img:first"), null != imgInside.width() && R(imgInside, a, b, c, !0), textIdChildren = e(e(p[a]).attr("data-text-id")).children(), k = -1, textIdChildren.each(function () {
            k++;
            imgInside = e(this).find("img:first");
            null != imgInside.width() && R(imgInside, e(p[a]).attr("data-text-id") + "-" + k, b, c, !1)
        }), e(e(p[a]).attr("data-text-id")).css({width: c.width + "px", left: parseInt(a * c.width, 10), top: m.css("top")}))
    }
    function Q(a, b, c, e, f, n, m) {
        currentCarouselLeft = b.css("left").substr(0, b.css("left").lastIndexOf("px"));
        1 === a || -1 === a ? (m.isCarouselScrolling = !0, b.css("opacity", "0.5"), b.animate({opacity: 1, left: "+=" + a * m.carouselStep}, 500, "easeOutCubic", function () {
            O(m, b, c, e, f, n);
            m.isCarouselScrolling = !1
        })) : currentCarouselLeft != -1 * Math.floor(m.current_img_no / f.numberOfThumbsPerScreen) * m.carouselStep && (m.isCarouselScrolling = !0, b.css("opacity", "0.5"), b.animate({opacity: 1, left: -1 * Math.floor(m.current_img_no / f.numberOfThumbsPerScreen) * m.carouselStep}, 500, "easeOutCubic", function () {
            O(m, b, c, e, f, n);
            m.isCarouselScrolling = !1
        }))
    }
    function O(a, b, c, e, f, n) {
        currentCarouselLeft = b.css("left").substr(0, b.css("left").lastIndexOf("px"));
        0 > currentCarouselLeft ? c.hasClass("carouselLeftNavDisabled") && c.removeClass("carouselLeftNavDisabled") : c.addClass("carouselLeftNavDisabled");
        Math.abs(currentCarouselLeft - a.carouselStep) < (n.width() + a.thumbMarginLeft) * a.total_images ? e.hasClass("carouselRightNavDisabled") && e.removeClass("carouselRightNavDisabled") : e.addClass("carouselRightNavDisabled")
    }
    function Y(a, b, c, p, f, n, m, h, g, l) {
        "opportune" != b.skin && (l.css({top: b.height + "px", "margin-top": parseInt(b.thumbsWrapperMarginTop / (b.origWidth / b.width), 10) + "px", height: parseInt(b.origthumbsHolderWrapperH / (b.origWidth / b.width), 10) + "px"}), bgTopCorrection = 0, n.css("background-position", "0px " + ((l.height() - b.origthumbsHolderWrapperH) / 2 + bgTopCorrection) + "px"), m.css("background-position", "0px " + ((l.height() - b.origthumbsHolderWrapperH) / 2 + bgTopCorrection) + "px"), g.css("width", b.width - n.width() - m.width()), b.origWidthThumbsHolderVisibleWrapper = b.origWidth - n.width() - m.width(), p.css({width: parseInt(b.origThumbW / (b.origWidthThumbsHolderVisibleWrapper / g.width()), 10) + "px", height: parseInt(b.origThumbH / (b.origWidthThumbsHolderVisibleWrapper / g.width()), 10) + "px"}), b.numberOfThumbsPerScreen >= a.total_images && g.css("left", parseInt((l.width() - (h.width() + a.thumbMarginLeft) * a.total_images) / 2, 10) + "px"), e(".thumbsHolder_ThumbOFF", c).find("img:first").css({width: p.width() + "px", height: p.height() + "px", "margin-top": parseInt((l.height() - p.height()) / 2, 10) + "px"}), a.thumbMarginLeft = Math.floor((l.width() - n.width() - m.width() - h.width() * b.numberOfThumbsPerScreen) / (b.numberOfThumbsPerScreen - 1)), thumb_i = -1, f.children().each(function () {
            thumb_i++;
            theThumb = e(this);
            theThumb.css("background-position", "center " + b.thumbsOnMarginTop / (b.origWidth / b.width) + "px");
            0 >= thumb_i ? theThumb.css("margin-left", Math.floor((l.width() - n.width() - m.width() - (a.thumbMarginLeft + theThumb.width()) * (b.numberOfThumbsPerScreen - 1) - theThumb.width()) / 2) + "px") : theThumb.css("margin-left", a.thumbMarginLeft + "px")
        }), a.carouselStep = (h.width() + a.thumbMarginLeft) * b.numberOfThumbsPerScreen)
    }
    function ba(a, b, c, p, f, n, m, h, g, l, r, t, q, s, w, u, v, z, d, F, E, y) {
        e(".bannerscollection_zoominout_texts", h).css({display: "none"});
        b.fadeSlides && e("#contentHolderUnit_" + a.current_img_no, h).css({"z-index": 0, display: "none"});
        if (b.width100Proc && b.height100Proc && !b.setAsBg) {
            var J = e("body").css("overflow");
            e("body").css("overflow", "hidden")
        }
        t = 0;
        b.enableTouchScreen && b.fadeSlides ? (responsiveWidth = p.parent().parent().parent().width(), responsiveHeight = p.parent().parent().parent().height()) : (responsiveWidth = p.parent().parent().width(), responsiveHeight = p.parent().parent().height());
        b.responsiveRelativeToBrowser && (responsiveWidth = e(window).width(), responsiveHeight = e(window).height());
        b.width100Proc && (b.width = responsiveWidth);
        b.height100Proc && (b.height = responsiveHeight);
        if (b.origWidth != responsiveWidth || b.width100Proc) {
            b.origWidth > responsiveWidth || b.width100Proc ? b.width = responsiveWidth : b.width100Proc || (b.width = b.origWidth);
            b.height100Proc || (b.height = b.width / a.bannerRatio);
            h.width(b.width);
            h.height(b.height);
            n.width(b.width);
            n.height(b.height);
            m.width(b.width);
            m.height(b.height);
            f.css("margin-top", parseInt((b.height - v.height()) / 2, 10) + "px");
            for (i = 0; i < a.total_images; i++)
                aa(i, a, b, c, h, p, f);
            contentHolderUnit = e(".contentHolderUnit", h);
            contentHolderUnit.width(b.width);
            contentHolderUnit.height(b.height);
            b.enableTouchScreen && b.fadeSlides && (h.parent().width(b.width + 1), h.parent().height(b.height));
            holderWidth = b.width * a.total_images;
            for (i = 0; i < a.total_images; i++)
                N(i, b, h, a.origImgsDimensions, c), t = b.fadeSlides ? 0 : parseInt(i * b.width, 10), e(e(c[i]).attr("data-text-id")).css({width: p.width() + "px", left: t, top: f.css("top")});
            m.width(holderWidth);
            "opportune" == b.skin ? (d.css({left: parseInt((h.width() - d.width()) / 2, 10) + "px", top: b.height + "px"}), b.width100Proc && b.height100Proc || d.css("margin-top", parseInt(b.thumbsWrapperMarginTop / (b.origWidth / b.width), 10) + "px")) : Y(a, b, h, r, q, s, w, u, F, E);
            g.css({left: parseInt((b.width - g.width()) / 2, 10) + "px", top: parseInt((b.height - g.height()) / 2, 10) + "px"});
            clearTimeout(a.timeoutID);
            M(a.continuouseIntervalIDs);
            1 < a.total_images ? y.click() : (e("#contentHolderUnit_" + a.current_img_no, h).html(e(c[a.previous_current_img_no]).html()), N(a.current_img_no, b, h, a.origImgsDimensions, c), I(a.timeouts_arr), e(".newFS", h).contents().unwrap(), L(a, a.currentImg, b, p, h, f, !1), b.fadeSlides && e("#contentHolderUnit_" + a.current_img_no, h).css({opacity: 1, "z-index": 0, display: "block"}), setTimeout(function () {
                T(a, b, h, l, c)
            }, 100))
        }
        b.width100Proc && b.height100Proc && !b.setAsBg && e("body").css("overflow", J)
    }
    function E() {
        var a = -1;
        if ("Microsoft Internet Explorer" == navigator.appName) {
            var b = navigator.userAgent, c = /MSIE ([0-9]{1,}[.0-9]{0,})/;
            null != c.exec(b) && (a = parseFloat(RegExp.$1))
        } else
            "Netscape" == navigator.appName && (b = navigator.userAgent, c = /Trident\/.*rv:([0-9]{1,}[.0-9]{0,})/, null != c.exec(b) && (a = parseFloat(RegExp.$1)));
        return parseInt(a, 10)
    }
    function X(a, b, c) {
        b.autoPlay = c.autoPlay;
        void 0 != e(a[b.current_img_no]).attr("data-autoPlay") && "" != e(a[b.current_img_no]).attr("data-autoPlay") && (b.autoPlay = e(a[b.current_img_no]).attr("data-autoPlay"))
    }
    e.fn.bannerscollection_zoominout = function (a) {
        a = e.extend({}, e.fn.bannerscollection_zoominout.defaults, a);
        return this.each(function () {
            var b = e(this);
            responsiveWidth = b.parent().width();
            responsiveHeight = b.parent().height();
            a.responsiveRelativeToBrowser && (responsiveWidth = e(window).width(), responsiveHeight = e(window).height());
            a.origWidth = a.width;
            a.width100Proc && (a.width = responsiveWidth);
            a.origHeight = a.height;
            a.height100Proc && (a.height = responsiveHeight);
            a.responsive && (a.origWidth != responsiveWidth || a.width100Proc) && (a.width = a.origWidth > responsiveWidth || a.width100Proc ? responsiveWidth : a.origWidth, a.height100Proc || (a.height = a.width / (a.origWidth / a.origHeight)));
            var c = e("<div></div>").addClass("bannerscollection_zoominout").addClass(a.skin), p = e('<div class="bannerControls"> <div class="leftNav"></div> <div class="rightNav"></div> </div> <div class="contentHolderVisibleWrapper"><div class="contentHolder"></div></div> <div class="playOver"></div> <div class="thumbsHolderWrapper"><div class="thumbsHolderVisibleWrapper"><div class="thumbsHolder"></div></div></div> <canvas class="mycanvas"></canvas>');
            b.wrap(c);
            b.after(p);
            var f = b.parent(".bannerscollection_zoominout");
            a.setAsBg && f.wrap('<div class="setAsBg" />');
            var n = e(".bannerControls", f), m = e(".contentHolderVisibleWrapper", f), h = e(".contentHolder", f), c = e('<div class="bottomNav"></div>');
            b.after(c);
            a.showAllControllers || n.css("display", "none");
            var g = e(".leftNav", f), l = e(".rightNav", f);
            g.css("display", "none");
            l.css("display", "none");
            a.showNavArrows && a.showOnInitNavArrows && (g.css("display", "block"), l.css("display", "block"));
            var r = e(".bottomNav", f), t;
            "opportune" == a.skin && (r.css({display: "block", top: a.height + "px"}), a.width100Proc && a.height100Proc ? r.css("margin-top", a.thumbsWrapperMarginTop + "px") : r.css("margin-top", a.thumbsWrapperMarginTop / (a.origWidth / a.width) + "px"));
            a.showBottomNav || r.css("display", "none");
            a.showOnInitBottomNav || r.css("left", "-5000px");
            var q = e(".thumbsHolderWrapper", f), s = e(".thumbsHolderVisibleWrapper", f), w = e(".thumbsHolder", f), u, v;
            u = e('<div class="carouselLeftNav"></div>');
            v = e('<div class="carouselRightNav"></div>');
            q.append(u);
            q.append(v);
            v.css("right", "0");
            w.css("width", u.width() + "px");
            a.showBottomNav && a.showOnInitBottomNav || q.css({opacity: 0, display: "none"});
            "opportune" != a.skin && q.css("margin-top", parseInt(a.thumbsWrapperMarginTop / (a.origWidth / a.width), 10) + "px");
            c = E();
            a.enableTouchScreen && (a.fadeSlides && (p = Math.floor(1E5 * Math.random()), f.wrap('<div id="zoominoutParent_' + p + '" style="position:relative;" />'), e("#zoominoutParent_" + p).width(a.width + 1), e("#zoominoutParent_" + p).height(a.height)), -1 != c && 9 == c && a.fadeSlides && "opportune" == a.skin || (h.css("cursor", "url(" + a.absUrl + "skins/hand.cur),url(" + a.absUrl + "skins/hand.cur),move"), f.css("cursor", "url(" + a.absUrl + "skins/hand.cur),url(" + a.absUrl + "skins/hand.cur),move")), h.css("left", "0"), a.fadeSlides ? -1 != c && 9 == c && a.fadeSlides && "opportune" == a.skin || f.draggable({axis: "x", containment: "parent", distance: 10, start: function (a, b) {
                    origLeft = parseInt(e(this).css("left"), 10);
                    z.css("display", "none")
                }, stop: function (a, b) {
                    d.slideIsRunning || (finalLeft = parseInt(e(this).css("left"), 10), origLeft < finalLeft ? g.click() : l.click(), e(this).css("left", "0px"))
                }}) : h.draggable({axis: "x", distance: 10, disabled: !0, start: function (a, b) {
                    origLeft = parseInt(e(this).css("left"), 10);
                    z.css("display", "none")
                }, stop: function (a, b) {
                    d.slideIsRunning || (finalLeft = parseInt(e(this).css("left"), 10), origLeft < finalLeft ? g.click() : l.click())
                }}));
            var z = e(".playOver", f);
            z.css({left: parseInt((a.width - z.width()) / 2, 10) + "px", top: parseInt((a.height - z.height()) / 2, 10) + "px"});
            var d = {total_images: 0, current_img_no: 0, currentImg: 0, previous_current_img_no: 0, autoPlay: !1, slideIsRunning: !1, mouseOverBanner: !1, isVideoPlaying: !1, bottomNavClicked: !1, current_imgInside: "", previous_imgInside: "", windowWidth: 0, carouselStep: 0, thumbMarginLeft: 0, timeoutID: "", intervalID: "", arcInitialTime: (new Date).getTime(), timeElapsed: 0, origImgsDimensionsBGS: [], origImgsDimensions: [], canvas: "", ctx: "", timeouts_arr: [], continuouseIntervalIDs: [], rotationFunctionsArr: [], rotationDurationArr: [], iFrameArr: [], bannerRatio: a.origWidth / a.origHeight, msiInterval: "", msiInitialTime: (new Date).getTime(), curZoom: 0, cur_marginLeft: 0, cur_marginTop: 0, firstLoadingComplete: !1};
            d.canvas = e(".mycanvas", f)[0];
            d.canvas.width = 2 * a.circleRadius + 4 * a.circleLineWidth;
            d.canvas.height = 2 * a.circleRadius + 4 * a.circleLineWidth;
            d.autoPlay = a.autoPlay;
            -1 != c && 9 > c && (a.showCircleTimer = !1);
            a.showCircleTimer && (d.ctx = d.canvas.getContext("2d"));
            var F = [], G = 0;
            f.width(a.width);
            f.height(a.height);
            m.width(a.width);
            m.height(a.height);
            h.width(a.width);
            h.height(a.height);
            n.css("margin-top", parseInt((a.height - g.height()) / 2, 10) + "px");
            c = b.find("ul:first");
            d.total_images = 0;
            var y = c.children(), J, I = 0, H, P = 0, M = 0, A, x, U = 0, O = 0, S = '<img src="' + a.absUrl + 'skins/empty.png" alt="" width="1" height="1" />';
            y.each(function () {
                d.currentImg = e(this);
                d.currentImg.is("li") || (d.currentImg = d.currentImg.find("li:first"));
                if (d.currentImg.is("li")) {
                    d.total_images++;
                    myzindex = 0;
                    mydisplay = "none";
                    1 == d.total_images && (myzindex = 1, mydisplay = "block");
                    J = e('<div class="contentHolderUnit" rel="' + (d.total_images - 1) + '" id="contentHolderUnit_' + (d.total_images - 1) + '">' + d.currentImg.html() + "</div>");
                    a.fadeSlides ? J.css({position: "absolute", top: 0, left: 0, "z-index": myzindex, display: mydisplay}) : J.css({position: "relative", "float": "left"});
                    J.width(a.width);
                    J.height(a.height);
                    h.append(J);
                    I += a.width;
                    A = e("#contentHolderUnit_" + (d.total_images - 1), f).find("img:first");
                    null != A.width() ? (d.origImgsDimensions[d.total_images - 1] = A.width() + ";" + A.height(), a.responsive && a.origWidth != responsiveWidth && R(A, d.total_images - 1, d, a, !0)) : (e("#contentHolderUnit_" + (d.total_images - 1), f).prepend(S), d.origImgsDimensions[d.total_images - 1] = "1;1");
                    d.current_img_no = d.total_images - 1;
                    A = e("#contentHolderUnit_" + d.current_img_no, f).find("img:first");
                    F[d.total_images - 1] = A.width() + ";" + A.height();
                    N(d.total_images - 1, a, f, d.origImgsDimensions, y);
                    "opportune" == a.skin && (H = e('<div class="bottomNavButtonOFF" rel="' + (d.total_images - 1) + '"></div>'), r.append(H), P += parseInt(H.css("padding-left").substring(0, H.css("padding-left").length - 2), 10) + H.width(), M = parseInt((r.height() - parseInt(H.css("height").substring(0, H.css("height").length - 2))) / 2, 10), H.css("margin-top", M + "px"));
                    "opportune" != a.skin && (image_name = e(y[d.total_images - 1]).attr("data-bottom-thumb"), x = e('<div class="thumbsHolder_ThumbOFF" rel="' + (d.total_images - 1) + '"><img src="' + image_name + '"></div>'), w.append(x), 0 == a.origThumbW && (0 == a.numberOfThumbsPerScreen && (a.numberOfThumbsPerScreen = Math.floor((a.origWidth - u.width() - v.width()) / x.width())), a.origThumbW = x.width(), a.origThumbH = x.height(), a.origthumbsHolderWrapperH = q.height(), d.thumbMarginLeft = Math.floor((a.origWidth - u.width() - v.width() - x.width() * a.numberOfThumbsPerScreen) / (a.numberOfThumbsPerScreen - 1))), w.css("width", w.width() + d.thumbMarginLeft + x.width() + "px"), U = parseInt((q.height() - parseInt(x.css("height").substring(0, x.css("height").length - 2))) / 2, 10));
                    O = a.fadeSlides ? 0 : parseInt((d.total_images - 1) * a.width, 10);
                    h.append(e(d.currentImg.attr("data-text-id")));
                    e(d.currentImg.attr("data-text-id")).css({width: b.width() + "px", left: O, top: n.css("top")});
                    var c = -1;
                    e(d.currentImg.attr("data-text-id")).children().each(function () {
                        c++;
                        A = e(this).find("img:first");
                        null != A.width() ? (d.origImgsDimensions[d.currentImg.attr("data-text-id") + "-" + c] = A.width() + ";" + A.height(), a.responsive && a.origWidth != responsiveWidth && R(A, d.currentImg.attr("data-text-id") + "-" + c, d, a, !1)) : d.origImgsDimensions[d.currentImg.attr("data-text-id") + "-" + c] = null
                    })
                }
            });
            h.width(I);
            r.width(P);
            a.showOnInitBottomNav && r.css("left", parseInt((f.width() - P) / 2, 10) + "px");
            "opportune" != a.skin && (s.css({width: a.origWidth - u.width() - v.width(), left: u.width() + "px"}), d.carouselStep = (x.width() + d.thumbMarginLeft) * a.numberOfThumbsPerScreen, u.addClass("carouselLeftNavDisabled"), a.numberOfThumbsPerScreen >= d.total_images && (v.addClass("carouselRightNavDisabled"), u.css("display", "none"), v.css("display", "none"), s.css("left", parseInt((q.width() - (x.width() + d.thumbMarginLeft) * d.total_images) / 2, 10) + "px")), q.css("top", a.height + "px"), e(".thumbsHolder_ThumbOFF", f).find("img:first").css("margin-top", U + "px"), a.origthumbsHolder_MarginTop = U);
            var C = e(".thumbsHolder_ThumbOFF", f);
            Y(d, a, f, C, w, u, v, x, s, q);
            e("iframe", f).each(function () {
                var a = e(this).attr("src"), b = "?wmode=transparent";
                -1 != a.indexOf("?") && (b = "&wmode=transparent");
                e(this).attr("src", a + b)
            });
            d.current_img_no = 0;
            d.currentImg = e(y[0]);
            f.find("img:first");
            f.mouseenter(function () {
                a.pauseOnMouseOver && 1 < d.total_images && d.firstLoadingComplete && (d.mouseOverBanner = !0, clearTimeout(d.timeoutID), nowx = (new Date).getTime(), d.timeElapsed += nowx - d.arcInitialTime);
                a.autoHideNavArrows && a.showNavArrows && (g.css("display", "block"), l.css("display", "block"));
                a.autoHideBottomNav && a.showBottomNav && ("opportune" == a.skin ? r.css({display: "block", left: parseInt((f.width() - P) / 2, 10) + "px"}) : 0 > a.thumbsWrapperMarginTop && d.isVideoPlaying || !a.showBottomNav || (q.css({display: "block"}), q.stop().animate({opacity: 1}, 500, "swing", function () {
                })))
            });
            f.mouseleave(function () {
                a.pauseOnMouseOver && 1 < d.total_images && d.firstLoadingComplete && (d.mouseOverBanner = !1, nowx = (new Date).getTime());
                a.autoHideNavArrows && a.showNavArrows && !d.isVideoPlaying && (g.css("display", "none"), l.css("display", "none"));
                a.autoHideBottomNav && a.showBottomNav && ("opportune" == a.skin ? r.css("display", "none") : q.stop().animate({opacity: 0}, 300, "swing", function () {
                }));
                if (0 < d.autoPlay && 1 < d.total_images && !d.isVideoPlaying && a.pauseOnMouseOver && d.firstLoadingComplete) {
                    clearTimeout(d.timeoutID);
                    d.arcInitialTime = (new Date).getTime();
                    var c = parseInt(1E3 * d.autoPlay - (d.timeElapsed + nowx - d.arcInitialTime), 10);
                    d.timeoutID = setTimeout(function () {
                        K(1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x)
                    }, c)
                }
            });
            c = e(".contentHolderUnit", h);
            -1 != navigator.userAgent.indexOf("Safari") && -1 == navigator.userAgent.indexOf("Chrome") && -1 == navigator.userAgent.indexOf("Android") ? c.css("z-index", "1") : -1 != navigator.userAgent.indexOf("Chrome") && -1 == navigator.userAgent.indexOf("Android") && c.css("z-index", "1");
            c.click(function () {
                var b = e(this).attr("rel");
                "true" == e(y[d.current_img_no]).attr("data-video") && (b != d.current_img_no ? d.isVideoPlaying = !1 : (clearTimeout(d.timeoutID), A = e(this).find("img:first"), A.css("display", "none"), z.css("display", "none"), e(d.currentImg.attr("data-text-id")).children().css("opacity", 0), d.isVideoPlaying = !0, 0 > a.thumbsWrapperMarginTop && (q.css("display", "none"), "opportune" == a.skin && r.css("display", "none")), a.showCircleTimer && (clearInterval(d.intervalID), d.ctx.clearRect(0, 0, d.canvas.width, d.canvas.height), d.ctx.beginPath(), d.ctx.globalAlpha = 0, d.ctx.arc(a.circleRadius + 2 * a.circleLineWidth, a.circleRadius + 2 * a.circleLineWidth, a.circleRadius, 0, 0, !1), d.ctx.lineWidth = a.circleLineWidth + 2, d.ctx.strokeStyle = a.behindCircleColor, d.ctx.stroke(), d.ctx.beginPath(), d.ctx.globalAlpha = 0, d.ctx.arc(a.circleRadius + 2 * a.circleLineWidth, a.circleRadius + 2 * a.circleLineWidth, a.circleRadius, 0, 0, !1), d.ctx.lineWidth = a.circleLineWidth, d.ctx.strokeStyle = a.circleColor, d.ctx.stroke())));
                var c = e(y[d.current_img_no]);
                void 0 != c.attr("data-link") && b == d.current_img_no && "" != c.attr("data-link") && (b = a.target, void 0 != c.attr("data-target") && "" != c.attr("data-target") && (b = c.attr("data-target")), "_blank" == b ? window.open(c.attr("data-link")) : window.location = c.attr("data-link"))
            });
            z.click(function () {
                z.css("display", "none");
                clearTimeout(d.timeoutID);
                A = e("#contentHolderUnit_" + d.current_img_no, f).find("img:first");
                A.css("display", "none");
                e(d.currentImg.attr("data-text-id")).children().css("opacity", 0);
                d.isVideoPlaying = !0;
                0 > a.thumbsWrapperMarginTop && (q.css("display", "none"), "opportune" == a.skin && r.css("display", "none"));
                a.showCircleTimer && (clearInterval(d.intervalID), d.ctx.clearRect(0, 0, d.canvas.width, d.canvas.height), d.ctx.beginPath(), d.ctx.globalAlpha = 0, d.ctx.arc(a.circleRadius + 2 * a.circleLineWidth, a.circleRadius + 2 * a.circleLineWidth, a.circleRadius, 0, 0, !1), d.ctx.lineWidth = a.circleLineWidth + 2, d.ctx.strokeStyle = a.behindCircleColor, d.ctx.stroke(), d.ctx.beginPath(), d.ctx.globalAlpha = 0, d.ctx.arc(a.circleRadius + 2 * a.circleLineWidth, a.circleRadius + 2 * a.circleLineWidth, a.circleRadius, 0, 0, !1), d.ctx.lineWidth = a.circleLineWidth, d.ctx.strokeStyle = a.circleColor, d.ctx.stroke())
            });
            g.click(function () {
                d.slideIsRunning || (d.isVideoPlaying = !1, a.showBottomNav && (q.css({opacity: 1, display: "block"}), "opportune" == a.skin && r.css("display", "block")), clearTimeout(d.timeoutID), K(-1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x))
            });
            l.click(function () {
                d.slideIsRunning || (d.isVideoPlaying = !1, a.showBottomNav && (q.css({opacity: 1, display: "block"}), "opportune" == a.skin && r.css("display", "block")), clearTimeout(d.timeoutID), K(1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x))
            });
            var V = !1;
            e(window).resize(function () {
                var c = E();
                doResizeNow = !0;
                -1 != c && 9 == c && 0 == d.windowWidth && (doResizeNow = !1);
                d.windowWidth == e(window).width() ? doResizeNow = !1 : d.windowWidth = e(window).width();
                a.responsive && doResizeNow && !d.slideIsRunning && (!1 !== V && clearTimeout(V), V = setTimeout(function () {
                    ba(d, a, y, b, n, m, h, f, z, F, C, D, w, u, v, x, g, H, r, s, q, l)
                }, 300))
            });
            var D = e(".bottomNavButtonOFF", f);
            "opportune" == a.skin && (D.click(function () {
                if (!d.slideIsRunning && d.firstLoadingComplete) {
                    d.isVideoPlaying = !1;
                    var c = e(this).attr("rel");
                    d.current_img_no != c && (e(D[d.current_img_no]).removeClass("bottomNavButtonON"), d.previous_current_img_no = d.current_img_no, d.bottomNavClicked = !0, d.current_img_no = c - 1, clearTimeout(d.timeoutID), K(1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x))
                }
            }), D.mouseenter(function () {
                var b = e(this), c = b.attr("rel");
                if (a.showPreviewThumbs) {
                    t = e('<div class="bottomOverThumb"></div>');
                    b.append(t);
                    var d = e(y[c]).attr("data-bottom-thumb"), f = e(y[G]).attr("data-bottom-thumb"), g = 80, h = -80;
                    G > c && (g = -80, h = 80);
                    t.html("");
                    t.html('<div class="innerBottomOverThumb"><img src="' + f + '"style="margin:0px;" id="oldThumb"><img src="' + d + '" style="margin-top:-80px; margin-left:' + g + 'px;" id="newThumb"></div>');
                    e("#newThumb").stop().animate({marginLeft: "0px"}, 150, function () {
                        t.html('<div class="innerBottomOverThumb"><img src="' + d + '"></div>')
                    });
                    e("#oldThumb").stop().animate({marginLeft: h + "px"}, 150, function () {
                    });
                    G = c
                }
                b.addClass("bottomNavButtonON")
            }), D.mouseleave(function () {
                var b = e(this), c = b.attr("rel");
                a.showPreviewThumbs && t.remove();
                d.current_img_no != c && b.removeClass("bottomNavButtonON")
            }));
            C.mousedown(function () {
                if (!d.slideIsRunning && d.firstLoadingComplete) {
                    arrowClicked = !0;
                    d.isVideoPlaying = !1;
                    var c = e(this).attr("rel");
                    d.current_img_no != c && (e(C[d.current_img_no]).removeClass("thumbsHolder_ThumbON"), d.previous_current_img_no = d.current_img_no, d.bottomNavClicked = !0, d.current_img_no = c - 1, clearTimeout(d.timeoutID), K(1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x))
                }
            });
            C.mouseup(function () {
                arrowClicked = !1
            });
            C.mouseenter(function () {
                var a = e(this);
                a.attr("rel");
                a.addClass("thumbsHolder_ThumbON")
            });
            C.mouseleave(function () {
                var a = e(this), b = a.attr("rel");
                d.current_img_no != b && a.removeClass("thumbsHolder_ThumbON")
            });
            u.click(function () {
                d.isCarouselScrolling || (currentCarouselLeft = w.css("left").substr(0, w.css("left").lastIndexOf("px")), 0 > currentCarouselLeft && Q(1, w, u, v, a, x, d))
            });
            v.click(function () {
                d.isCarouselScrolling || (currentCarouselLeft = w.css("left").substr(0, w.css("left").lastIndexOf("px")), Math.abs(currentCarouselLeft - d.carouselStep) < (x.width() + d.thumbMarginLeft) * d.total_images && Q(-1, w, u, v, a, x, d))
            });
            "opportune" == a.skin && e(D[d.current_img_no]).addClass("bottomNavButtonON");
            e(C[d.current_img_no]).addClass("thumbsHolder_ThumbON");
            X(y, d, a);
            setTimeout(function () {
                e(".myloader", f).css("display", "none");
                d.firstLoadingComplete = !0;
                a.enableTouchScreen && !a.fadeSlides && h.draggable("option", "disabled", !1);
                1 < d.total_images && (d.arcInitialTime = (new Date).getTime(), d.mouseOverBanner = !1, d.timeElapsed = 0);
                T(d, a, f, F, y);
                L(d, d.currentImg, a, b, f, n, !1);
                0 < d.autoPlay && 1 < d.total_images && (clearTimeout(d.timeoutID), a.showCircleTimer && (d.intervalID = setInterval(function () {
                    W(d, a)
                }, 125)), d.timeoutID = setTimeout(function () {
                    K(1, d, a, D, y, b, n, h, f, z, F, C, w, u, v, x)
                }, 1E3 * d.autoPlay))
            }, 1E3 * a.myloaderTime);
            "true" == e(y[d.current_img_no]).attr("data-video") && z.css("display", "block")
        })
    };
    e.fn.bannerscollection_zoominout.defaults = {skin: "opportune", width: 918, height: 382, width100Proc: !1, height100Proc: !1, autoPlay: 10, fadeSlides: !0, loop: !0, setAsBg: !1, horizontalPosition: "center", verticalPosition: "center", initialZoom: 1, finalZoom: 0.8, zoomEasing: "ease", duration: 20, durationIEfix: 30, initialOpacity: 1, target: "_blank", pauseOnMouseOver: !0, showCircleTimer: !0, showCircleTimerIE8IE7: !1, circleRadius: 10, circleLineWidth: 4, circleColor: "#FF0000", circleAlpha: 100, behindCircleColor: "#000000", behindCircleAlpha: 50, responsive: !0, responsiveRelativeToBrowser: !0, numberOfThumbsPerScreen: 0, thumbsOnMarginTop: 20, thumbsWrapperMarginTop: 20, showAllControllers: !0, showNavArrows: !0, showOnInitNavArrows: !0, autoHideNavArrows: !0, showBottomNav: !0, showOnInitBottomNav: !0, autoHideBottomNav: !1, showPreviewThumbs: !0, enableTouchScreen: !0, absUrl: "", scrollSlideDuration: 0.8, scrollSlideEasing: "easeOutQuad", defaultEasing: "swing", myloaderTime: 2, defaultExitLeft: 0, defaultExitTop: 0, defaultExitDuration: 0, defaultExitDelay: 0, defaultExitFade: 1, defaultExitEasing: "swing", defaultExitOFF: !1, origWidth: 0, origHeight: 0, origThumbW: 0, origThumbH: 0, origthumbsHolderWrapperH: 0, origthumbsHolder_MarginTop: 0, windowOrientationScreenSize0: 0, windowOrientationScreenSize90: 0, windowOrientationScreenSize_90: 0, windowCurOrientation: 0}
})(jQuery);