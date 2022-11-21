Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16198632227
	for <lists+openipmi-developer@lfdr.de>; Mon, 21 Nov 2022 13:33:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ox5z7-0000Yh-TV;
	Mon, 21 Nov 2022 12:33:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1ox3US-0000nv-PH
 for openipmi-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 09:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zKIMCLssyl0fZfxv9qwrDGb1MSMKUlBI4byGPRB54lU=; b=ji/A/6PcPJURVHIKR+WRTJqMbG
 boxUz26RDg/tg346/MQoz8/6cbw2TvGy/q78z8RdsoFg8UiswTdud2vh8VFYpxFZTGlqTUV2i/FMc
 wzY43bOQLILHJNJGKttCRqQ93ArYzKkctWHxyz1aEZ2FevcAd4Of0TnQKeteM7U8eGBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zKIMCLssyl0fZfxv9qwrDGb1MSMKUlBI4byGPRB54lU=; b=KofHi/ySI11tL96AoY6eXJMSr3
 24UJSHSgSgwGDOgM8XWBiNJ8mHMHriSLBWXc6QxaeRkmA5uHFuUPOqEaalWvuln/tsVllnNraWKmB
 WzNKO8UmznK5S4wrW/3k+Xump1uTbTjIliko601ZiRtF79+leeZR44ykA+wm+5tgT7P4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox3US-0002xX-2J for openipmi-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 09:53:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8EB560F97;
 Mon, 21 Nov 2022 09:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06F83C433C1;
 Mon, 21 Nov 2022 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669024397;
 bh=m9yZHwnTEqGasYZNomMe1mRJHVzf8B7M3LDSNHYcXeA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Opj/itLbJtFE0syJxd+qkemdvm+GfbfZ1pccF1SGR++3DJnkeyD3YQtGhN+blIjub
 US8fX8iushvScwunkPr7LKirCchaNKKAU/twl0oVnqHEwdHsHxi0M0d/wgtlpEZqG7
 k4ovt/Znm0DICj47Y+N6I+Yw47E1MyyiN0e/92S2h9qHrb149jszKe3FalK/2rVJQ+
 ZppAyMp4v8rjq+XBX9JSBl1ysXWpcIvX0EVYeK13kfbg9IEzo070nVbf9UiCPP9DpS
 bXABnzNPLB0lPKqHS3KQR0EQyUsQW7BynY23b8Z2+QTbLFxJQgHRN0fjhkCpVJB9+z
 k93zjyweI0uEQ==
Date: Mon, 21 Nov 2022 09:53:05 +0000
From: Lee Jones <lee@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Message-ID: <Y3tKgXPJP7S48i3j@google.com>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 18 Nov 2022, Uwe Kleine-König wrote: > Hello, > >
    since commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new() > call-back
    type") from 2016 there is a "temporary" alternative probe > callback for
   i2c drivers. 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ox3US-0002xX-2J
X-Mailman-Approved-At: Mon, 21 Nov 2022 12:33:12 +0000
Subject: Re: [Openipmi-developer] [PATCH 000/606] i2c: Complete conversion
 to i2c_probe_new
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-fbdev@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Grant Likely <grant.likely@linaro.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, Angel Iglesias <ang.iglesiasg@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Purism Kernel Team <kernel@puri.sm>,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, linux-crypto@vger.kernel.org,
 kernel@pengutronix.de, netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAxOCBOb3YgMjAyMiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cgo+IEhlbGxvLAo+
IAo+IHNpbmNlIGNvbW1pdCBiOGExYTRjZDVhOTggKCJpMmM6IFByb3ZpZGUgYSB0ZW1wb3Jhcnkg
LnByb2JlX25ldygpCj4gY2FsbC1iYWNrIHR5cGUiKSBmcm9tIDIwMTYgdGhlcmUgaXMgYSAidGVt
cG9yYXJ5IiBhbHRlcm5hdGl2ZSBwcm9iZQo+IGNhbGxiYWNrIGZvciBpMmMgZHJpdmVycy4KCk9o
IHllYWgsIHRoaXMhICBUaGFua3MgZm9yIHBpY2tpbmcgdGhpcyB1cCBVd2UsIEkgZ3Vlc3MgSSd2
ZSBiZWVuCmRpc3RyYWN0ZWQgZm9yIHRoZSBwYXN0IDYgeWVhcnMgb3Igc28uIDopCgo+IFRoaXMg
c2VyaWVzIGNvbXBsZXRlcyBhbGwgZHJpdmVycyB0byB0aGlzIG5ldyBjYWxsYmFjayAodW5sZXNz
IEkgbWlzc2VkCj4gc29tZXRoaW5nKS4gSXQncyBiYXNlZCBvbiBjdXJyZW50IG5leHQvbWFzdGVy
Lgo+IEEgcGFydCBvZiB0aGUgcGF0Y2hlcyBkZXBlbmQgb24gY29tbWl0IDY2MjIzMzczMWQ2NiAo
ImkyYzogY29yZToKPiBJbnRyb2R1Y2UgaTJjX2NsaWVudF9nZXRfZGV2aWNlX2lkIGhlbHBlciBm
dW5jdGlvbiIpLCB0aGVyZSBpcyBhIGJyYW5jaCB0aGF0Cj4geW91IGNhbiBwdWxsIGludG8geW91
ciB0cmVlIHRvIGdldCBpdDoKPiAKPiAJaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvd3NhL2xpbnV4LmdpdCBpMmMvY2xpZW50X2RldmljZV9pZF9oZWxwZXIt
aW1tdXRhYmxlCj4gCj4gSSBkb24ndCB0aGluayBpdCdzIGZlYXNhYmxlIHRvIGFwcGx5IHRoaXMg
c2VyaWVzIGluIG9uZSBnbywgc28gSSBhc2sgdGhlCj4gbWFpbnRhaW5lcnMgb2YgdGhlIGNoYW5n
ZWQgZmlsZXMgdG8gYXBwbHkgdmlhIHRoZWlyIHRyZWUuIEkgZ3Vlc3MgaXQKPiB3aWxsIHRha2Ug
YSBmZXcga2VybmVsIHJlbGVhc2UgaXRlcmF0aW9ucyB1bnRpbCBhbGwgcGF0Y2ggYXJlIGluLCBi
dXQgSQo+IHRoaW5rIGEgc2luZ2xlIHRyZWUgY3JlYXRlcyB0b28gbXVjaCBjb25mbGljdHMuCj4g
Cj4gVGhlIGxhc3QgcGF0Y2ggY2hhbmdlcyBpMmNfZHJpdmVyOjpwcm9iZSwgYWxsIG5vbi1jb252
ZXJ0ZWQgZHJpdmVycyB3aWxsCj4gZmFpbCB0byBjb21waWxlIHRoZW4uIFNvIEkgaG9wZSB0aGUg
YnVpbGQgYm90cyB3aWxsIHRlbGwgbWUgYWJvdXQgYW55Cj4gZHJpdmVyIEkgbWlzc2VkIHRvIGNv
bnZlcnQuIFRoaXMgcGF0Y2ggaXMgb2J2aW91c2x5IG5vdCBmb3IgYXBwbGljYXRpb24KPiBub3cu
Cj4gCj4gSSBkcm9wcGVkIG1vc3QgaW5kaXZpZHVhbHMgZnJvbSB0aGUgcmVjaXBlbnRzIG9mIHRo
aXMgbWFpbCB0byBub3QKPiBjaGFsbGVuZ2UgdGhlIG1haWwgc2VydmVycyBhbmQgbWFpbGluZyBs
aXN0IGZpbHRlcnMgdG9vIG11Y2guIFNvcnJ5IGlmCj4geW91IGhhZCBleHRyYSBlZmZvcnRzIHRv
IGZpbmQgdGhpcyBtYWlsLgoKWy4uLl0KCj4gIGRyaXZlcnMvbWZkLzg4cG04MDAuYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkLzg4cG04MDUuYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL2FhdDI4
NzAtY29yZS5jICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZk
L2FjdDg5NDVhLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZl
cnMvbWZkL2FkcDU1MjAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKy0tLQo+
ICBkcml2ZXJzL21mZC9hcml6b25hLWkyYy5jICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiAr
KystLS0KPiAgZHJpdmVycy9tZmQvYXMzNzExLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvYXMzNzIyLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvYXRjMjYweC1pMmMuYyAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvYXhwMjB4LWkyYy5jICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvYmNtNTkweHguYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvYmQ5NTcx
bXd2LmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQv
ZGE5MDN4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKysrLS0tCj4gIGRyaXZl
cnMvbWZkL2RhOTA1Mi1pMmMuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKy0tLQo+
ICBkcml2ZXJzL21mZC9kYTkwNTUtaTJjLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSAr
Ky0tLQo+ICBkcml2ZXJzL21mZC9kYTkwNjItY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAg
fCAgNiArKystLS0KPiAgZHJpdmVycy9tZmQvZGE5MDYzLWkyYy5jICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDYgKysrLS0tCj4gIGRyaXZlcnMvbWZkL2RhOTE1MC1jb3JlLmMgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL2toYWRhcy1tY3UuYyAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL2xtMzUzMy1jb3Jl
LmMgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL2xwMzk0
My5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgZHJpdmVycy9tZmQv
bHA4NzN4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVy
cy9tZmQvbHA4NzU2NS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAg
ZHJpdmVycy9tZmQvbHA4Nzg4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQgKyst
LQo+ICBkcml2ZXJzL21mZC9tYWRlcmEtaTJjLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
NiArKystLS0KPiAgZHJpdmVycy9tZmQvbWF4MTQ1NzcuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDYgKysrLS0tCj4gIGRyaXZlcnMvbWZkL21heDc3NjIwLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICA2ICsrKy0tLQo+ICBkcml2ZXJzL21mZC9tYXg3NzY5My5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgNiArKystLS0KPiAgZHJpdmVycy9tZmQvbWF4Nzc4NDMuYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKysrLS0tCj4gIGRyaXZlcnMvbWZkL21heDg5
MDcuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZk
L21heDg5MjUtaTJjLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZl
cnMvbWZkL21heDg5OTcuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKy0tLQo+
ICBkcml2ZXJzL21mZC9tYXg4OTk4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiAr
KystLS0KPiAgZHJpdmVycy9tZmQvbWMxM3h4eC1pMmMuYyAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDYgKysrLS0tCj4gIGRyaXZlcnMvbWZkL21lbmVsYXVzLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL21lbmYyMWJtYy5jICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgZHJpdmVycy9tZmQvcGFsbWFzLmMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvcGNmNTA2MzMtY29y
ZS5jICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvcmM1dDU4
My5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQv
cmV0dS1tZmQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQgKystLQo+ICBkcml2ZXJz
L21mZC9yazgwOC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0tLQo+ICBk
cml2ZXJzL21mZC9yb2htLWJkNzE4eDcuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0t
LQo+ICBkcml2ZXJzL21mZC9yc211X2kyYy5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
NiArKystLS0KPiAgZHJpdmVycy9tZmQvcnQ1MDMzLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvc2VjLWNvcmUuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvc2k0NzZ4LWkyYy5jICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDYgKysrLS0tCj4gIGRyaXZlcnMvbWZkL3NreTgxNDUyLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL3N0bWZ4LmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL3N0
bXBlLWkyYy5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrKy0tCj4gIGRyaXZlcnMv
bWZkL3N0cG1pYzEuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRy
aXZlcnMvbWZkL3N0dzQ4MXguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0t
Cj4gIGRyaXZlcnMvbWZkL3RjMzU4OXguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2
ICsrKy0tLQo+ICBkcml2ZXJzL21mZC90aS1sbXUuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgNSArKystLQo+ICBkcml2ZXJzL21mZC90cHM2MTA1eC5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgNSArKy0tLQo+ICBkcml2ZXJzL21mZC90cHM2NTAxMC5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgNiArKystLS0KPiAgZHJpdmVycy9tZmQvdHBzNjUwN3guYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvdHBzNjUwODYu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9tZmQvdHBz
NjUwOTAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJpdmVycy9t
ZmQvdHBzNjUyMTguYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgZHJp
dmVycy9tZmQvdHBzNjU4NnguYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0K
PiAgZHJpdmVycy9tZmQvdHBzNjU5MTAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYg
KysrLS0tCj4gIGRyaXZlcnMvbWZkL3RwczY1OTEyLWkyYy5jICAgICAgICAgICAgICAgICAgICAg
ICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL3R3bC1jb3JlLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICA1ICsrKy0tCj4gIGRyaXZlcnMvbWZkL3R3bDYwNDAuYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL3dsMTI3My1jb3JlLmMgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvbWZkL3dtODMxeC1pMmMu
YyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKy0tLQo+ICBkcml2ZXJzL21mZC93bTgz
NTAtaTJjLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0tLQo+ICBkcml2ZXJzL21m
ZC93bTg0MDAtY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0tLQo+ICBkcml2
ZXJzL21mZC93bTg5OTQtY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiArKystLS0K
CkZvciBteSBvd24gcmVmZXJlbmNlIChhcHBseSB0aGlzIGFzLWlzIHRvIHlvdXIgc2lnbi1vZmYg
YmxvY2spOgoKICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPgoK
PiAgZHJpdmVycy92aWRlby9iYWNrbGlnaHQvYWRwODg2MF9ibC5jICAgICAgICAgICAgIHwgIDYg
KysrLS0tCj4gIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2FkcDg4NzBfYmwuYyAgICAgICAgICAg
ICB8ICA2ICsrKy0tLQo+ICBkcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC9hcmN4Y25uX2JsLmMgICAg
ICAgICAgICAgfCAgNCArKy0tCj4gIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2JkNjEwNy5jICAg
ICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2xtMzYz
MGFfYmwuYyAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0
L2xtMzYzOV9ibC5jICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZlcnMvdmlkZW8vYmFj
a2xpZ2h0L2xwODU1eF9ibC5jICAgICAgICAgICAgICB8ICA1ICsrKy0tCj4gIGRyaXZlcnMvdmlk
ZW8vYmFja2xpZ2h0L2x2NTIwN2xwLmMgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4gIGRyaXZl
cnMvdmlkZW8vYmFja2xpZ2h0L3Rvc2FfYmwuYyAgICAgICAgICAgICAgICB8ICA1ICsrLS0tCj4g
IGRyaXZlcnMvdmlkZW8vZmJkZXYvbWF0cm94L21hdHJveGZiX21hdmVuLmMgICAgICB8ICA1ICsr
LS0tCgpGb3IgbXkgb3duIHJlZmVyZW5jZSAoYXBwbHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24t
b2ZmIGJsb2NrKToKCiAgQWNrZWQtZm9yLUJhY2tsaWdodC1ieTogTGVlIEpvbmVzIDxsZWVAa2Vy
bmVsLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
