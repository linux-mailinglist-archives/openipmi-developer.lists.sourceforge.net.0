Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B47F4A8C45
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Feb 2022 20:12:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFhWg-000355-EC; Thu, 03 Feb 2022 19:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nFNpR-0000ng-L1
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 22:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rr5xR3phcMmOtciTLGMao2x+J3LzUpf33KP5PgsG6mw=; b=Ex3VCRWM4iHcoUxBAOsOWFLEoM
 4U+coY/0eFuZqdhMlBPtf0VzgajX+soXxaqXSI8gTDLdezW21jvbdL/sAT2CvQvuJTDahCG3KAoMo
 xbls9o8vfKHsuavu0AzpNFDaHoTZiT7nLtpMmrJZuui42invaNGDqowWSSw19N8nKvbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rr5xR3phcMmOtciTLGMao2x+J3LzUpf33KP5PgsG6mw=; b=GskD99SD/VZz2AaqWGTW2XUsB5
 QElDkeAGDhruzuQyVS6zLuz5akbi1V2y0Y94q0iDSBOwqL56p7/qlcHTzucfZ/ac3AFPeIa+kmCDh
 DIJ0HQC4DpJ1tWS+WW3nb9qMIdWenkeDiOkskPHUMdT3uFGJVG4TZ3gCU9Sk9D8d42io=;
Received: from mail-qk1-f172.google.com ([209.85.222.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nFNpO-00DzaW-7H
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 22:10:15 +0000
Received: by mail-qk1-f172.google.com with SMTP id j24so941559qkk.10
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 02 Feb 2022 14:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=Rr5xR3phcMmOtciTLGMao2x+J3LzUpf33KP5PgsG6mw=;
 b=fcP42zsjJKBRLsCCLNxeBAvGoAUH+RgY1jYrpOhhT8bMHr7+15EWYSucDQfP1oORdR
 v8va2D+TIvGEUfFpYyk+KAAnpvrPj2Do2UURxQqDM2NZ0yrVKHV/Tmvmi8VnHPqEl5Sj
 FzsjYO1CSUmsISBtPa5x3zIEsUBOu9RZDDuPyg2QqPpe+3i2ouYdl1b7XJc+7Yz287oe
 n4Ll3sdxxGbRuNPqe8Va40e5cgmVlDZI5fIN6fBWjGY94knmRKOKljCldyrgDLu4eqFI
 61yZGnSZcmCnvpc5Ppek75k/hWgHufZ8NwnxWp4bgKiaLrzdRDurexHwqhp4Nqyni8AG
 h/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Rr5xR3phcMmOtciTLGMao2x+J3LzUpf33KP5PgsG6mw=;
 b=HV4OTdm3G4wwx8ov5P/KUNwgSwju6YhVzHbOs2uWGgJfWrNsobJPGMhinxeyuzefgF
 ErS/vMU5yZ0uh3HJXBKntHBRZsq+bxxuWqeQehV8llu5jhbkcdLsF4Z0Q8LqcrH8RAJy
 hsx/wwgztyMoe2T0A4j+jK11WYd2T9+Wq2PCetoCcSefXY40apufjEflflcx3C0Ggjfx
 Mgu2CgKi5C3PFM3amyd2fROblyv2asKK37XvVKu5Z2A/Fe9rmBNwIZoMtTzW9E8/s0H0
 z/qlBvE3Fc0NMfyYzy1HTL46XWkey2uF8mZc3wEx+OUxjw3Rxp1rN9Qtui0NkOLAaLPb
 y3NQ==
X-Gm-Message-State: AOAM530IORkNZJMLf92zEYFSoZT4fFpVd6hej3s8C+Jw5F2EP0mH94ml
 REsyXwuLa+F0m1hU8+DGQA==
X-Google-Smtp-Source: ABdhPJwRpKyRhMilcGtomGensbv6thBpUXpxVK7cAkdNeBk0lqsREJF6QVbIyABhwvxgVYCy4DCMsQ==
X-Received: by 2002:a37:4648:: with SMTP id t69mr21000172qka.702.1643839808031; 
 Wed, 02 Feb 2022 14:10:08 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id o13sm7298868qtv.36.2022.02.02.14.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Feb 2022 14:10:07 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:c4e6:e49c:6958:ac58])
 by serve.minyard.net (Postfix) with ESMTPSA id 68539181297;
 Wed,  2 Feb 2022 22:10:06 +0000 (UTC)
Date: Wed, 2 Feb 2022 16:10:05 -0600
From: Corey Minyard <minyard@acm.org>
To: "Verdun, Jean-Marie" <verdun@hpe.com>
Message-ID: <20220202221005.GD2091156@minyard.net>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <20220202175635.GC2091156@minyard.net>
 <3E9905F2-1576-4826-ADC2-85796DE0F4DB@hpe.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3E9905F2-1576-4826-ADC2-85796DE0F4DB@hpe.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 02, 2022 at 06:14:57PM +0000, Verdun, Jean-Marie
 wrote: > > This is far too big for a single patch. It needs to be broken
 into > > functional chunks that can be reviewed individually. Each [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.172 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nFNpO-00DzaW-7H
X-Mailman-Approved-At: Thu, 03 Feb 2022 19:12:12 +0000
Subject: Re: [Openipmi-developer] [PATCH] HPE BMC GXP SUPPORT
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: minyard@acm.org
Cc: Mark Rutland <mark.rutland@arm.com>,
 Wang Kefeng <wangkefeng.wang@huawei.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Sam Ravnborg <sam@ravnborg.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stanislav Jakubek <stano.jakubek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Marc Zyngier <maz@kernel.org>,
 Hao Fang <fanghao11@huawei.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Guenter Roeck <linux@roeck-us.net>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Anshuman Khandual <anshuman.khandual@arm.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Hawkins,
 Nick" <nick.hawkins@hpe.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Russell King \(Oracle\)" <rmk+kernel@armlinux.org.uk>,
 Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBGZWIgMDIsIDIwMjIgYXQgMDY6MTQ6NTdQTSArMDAwMCwgVmVyZHVuLCBKZWFuLU1h
cmllIHdyb3RlOgo+ID4gVGhpcyBpcyBmYXIgdG9vIGJpZyBmb3IgYSBzaW5nbGUgcGF0Y2guICBJ
dCBuZWVkcyB0byBiZSBicm9rZW4gaW50bwo+ID4gZnVuY3Rpb25hbCBjaHVua3MgdGhhdCBjYW4g
YmUgcmV2aWV3ZWQgaW5kaXZpZHVhbGx5LiAgRWFjaCBkcml2ZXIgYW5kCj4gPiBlYWNoIGRldmlj
ZSB0cmVlIGNoYW5nZSBhbG9uZyB3aXRoIGl0J3MgYWNjb21wYW55aW5nIGNvZGUgbmVlZCB0byBi
ZQo+ID4gZG9uZSBpbiBpbmRpdmlkdWFsIHBhdGNoZXMuICBUaGUgd2F5IGl0IGlzIGl0IGNhbid0
IGJlIHJldmlld2VkIGluIGFueQo+ID4gc2FuZSBtYW5uZXIuCj4gCj4gPiAtY29yZXkKPiAKPiBU
aGFua3MgZm9yIHlvdXIgZmVlZGJhY2suIFdlIGFyZSBnZXR0aW5nIGEgbGl0dGxlIGJpdCBsb3N0
IGhlcmUsIGFzIG91ciBwbGFuIHdhcyB0byBzdWJtaXQgaW5pdGlhbAo+IAo+IC0gYmluZGluZ3MK
PiAtIGR0cyBmb3IgU29DIGFuZCAxIGJvYXJkCj4gLSBpbml0aWFsIHBsYXRmb3JtIGluaXQgY29k
ZQo+IAo+IFRoZW4gZHJpdmVycyBjb2RlIGF2b2lkaW5nIHRvIHNlbmQgbWFueSBkdHMgdXBkYXRl
cyB3aGljaCBtaWdodCBjb21wbGV4aWZ5IHRoZSByZXZpZXcuIFdlIHdhbnRlZCB0byBzZW5kIGFs
bCBkcml2ZXJzIGNvZGUgdG8gcmVsZXZhbnQgcmV2aWV3ZXJzIGJ5IHRvbW9ycm93Lgo+IAo+IFNv
LCB3aGF0IHlvdSBhcmUgYXNraW5nICggZG8gbm90IHdvcnJ5IEkgYW0gbm90IHRyeWluZyB0byBu
ZWdvdGlhdGUsIEkganVzdCB3YW50IHRvIGF2b2lkIEVuZ2xpc2ggbWlzdW5kZXJzdGFuZGluZ3Mg
YXMgSSBhbSBGcmVuY2gpIGlzIHRvIHNlbmQgcGVyIGRyaXZlcgo+IAo+IC0gYmluZGluZwo+IC0g
ZHRzIHVwZGF0ZQo+IC0gZHJpdmVyIGNvZGUKPiAKPiBGb3IgZWFjaCBkcml2ZXIgdGhyb3VnaCBk
aWZmZXJlbnQgc3VibWlzc2lvbiAod2l0aCBlYWNoIG9mIHRoZW0gY29udGFpbmluZyB0aGUgMyBh
c3NvY2lhdGVkIHBhcnRzKSA/CgpBcm5kIGdhdmUgYW4gZXhjZWxsZW50IGV4cGxhaW5hdGlvbiBm
b3IgdGhpcy4KClRvIGJlIGNsZWFyLCB5b3UgbmVlZCB0byBzcGxpdCBvdXQgY2hhbmdlcyB0byBp
bmRpdmlkdWFsIHN1YnN5c3RlbXMgYW5kCnN1Ym1pdCB0aG9zZSB0byB0aGUgbWFpbnRhaW5lcnMg
Zm9yIHRoYXQgc3Vic3lzdGVtIGFuZCBub3Qgc2VuZCB0aGVtIHRvCmV2ZXJ5b25lLiAgVGhhdCB3
YXkgeW91IHJlZHVjZSBzZW5kaW5nIGVtYWlscyB0byBwZW9wbGUgd2hvIGRvbid0IG5lZWQKdG8g
c2VlIHRoZW0uCgpPbmNlIHlvdSBoYXZlIGEgc2V0IG9mIHBhdGNoZXMgZm9yIGEgc3Vic3lzdGVt
LCB5b3UgY2FuIHN1Ym1pdCB0aGVtIGFzIG9uZQpzZXQuICBUaGF0IGlzIGdlbmVyYWxseSBwcmVm
ZXJyZWQuICBUaGUgImdpdCBzZW5kLWVtYWlsIiBvciAiZ2l0CmZvcm1hdC1wYXRjaCIgdG9vbHMg
YXJlIGdlbmVyYWxseSB3aGF0IHdlIHVzZSwgdGhleSBsZXQgeW91IGNvbXBvc2UgYQpoZWFkZXIg
bWVzc2FnZSB3aGVyZSB5b3UgY2FuIGdpdmUgYW4gb3ZlcmFsbCBleHBsYWluYXRpb24sIHRoZW4g
aXQgc2VuZHMKdGhlIGluZGl2aWR1YWwgY2hhbmdlcyBhcyBmb2xsb3d1cCBtZXNzYWdlcyB0byB0
aGUgaGVhZGVyIG1lc3NhZ2UuCgotY29yZXkKCj4gCj4gV2hhdCBzaGFsbCBiZSB0aGUgaW5pdGlh
bCBvbmUgaW4gb3VyIGNhc2UgYXMgd2UgYXJlIGludHJvZHVjaW5nIGEgcGxhdGZvcm0gPyBBbiBl
bXB0eSBkdHMgaW5mcmFzdHJ1Y3R1cmUgYW5kIHRoZW4gd2UgbWFrZSBpdCBncm93IG9uZSBzdGVw
IGF0IGEgdGltZSA/Cj4gCj4gdmVqbWFyaWUKPiAKPiDvu78KPiAgCj4gCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Cj4gT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1p
LWRldmVsb3BlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
