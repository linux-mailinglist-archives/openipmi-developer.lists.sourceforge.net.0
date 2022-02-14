Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7834B5AFB
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Feb 2022 21:31:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nJi0n-0005Xp-KQ; Mon, 14 Feb 2022 20:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1nJXJm-0008IY-95
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 09:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3zUaM8opKL0LG20PPLjLO0sGhx6OMEFs8RjHjfjsiY4=; b=XeWK7nCRYBkJJGoIWgAfUTCPrp
 U0SCowxwhiLgUF1aVvf29z20GYBLx/xItMuzdaGGH2l8WOyEAF8Uz4oYUQyxpTskYhtVkgcVmZLxX
 TauhFZN+K/p3ExRpi4I0d+dud2u+PmCFmiz7AVv2gy2VTIUuAVMEGWKTkbsZLJYl6PDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3zUaM8opKL0LG20PPLjLO0sGhx6OMEFs8RjHjfjsiY4=; b=QTbP2dI+MfX7SKJcZJwwpBv2gG
 y7QheOpaKJexDkp7h8osNTM+hGCyHCbgg/p6xhJngvv2fbtJNibKKcat8VcWmJa0VeKQ9tanygXlr
 i1gbXHjNHviCuVJ3QI7FFe8fBOKIBSWu/vejNocY3qNhyIXBKzHkq2lEirTkz3I4Yd9o=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nJXJj-0003uU-5f
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 09:06:44 +0000
Received: by mail-qt1-f180.google.com with SMTP id k25so14866808qtp.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Feb 2022 01:06:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3zUaM8opKL0LG20PPLjLO0sGhx6OMEFs8RjHjfjsiY4=;
 b=54SsaIB9eeXsMJPR8wWGxV6kV4tffR1y0dpBdYwPR852MwaNIHc7vy+x+VWPf1wZLb
 H0bQwg71fYFTmqqyzMqZ2/GKXb3UyLHWzpDcVlMZzkG1rch2SMZGguNyHVCqaDS8E2gV
 GJFM5EL71GgpVGqcxYX9hVIoABwLwhj+alkUE3lYr5JLlD3TnTxHzv4cnhUzBOvB8sWI
 zjmhd73iegFMutpnkEUdxnBy4XKpwH+SMlT0g5CTA+D1NRXUvkopD/U5mJWwLp8cZj8D
 4ibR6xyp0rqQuy+lEbj2c6ooverKxx2hV7Mfh+Bww20UU8+nDxvdFMGUk5nadLsNIOmq
 +Dog==
X-Gm-Message-State: AOAM533LXH4thpKRtEU8/+AzSsjw4RAHfrOaYBbtRIW0H84cyhY7ZK2l
 N2EADJinkh7af8pL2be5Tmqi36wpZoHkOwpj
X-Google-Smtp-Source: ABdhPJwW1/1tsJG967mZ2VdHjKiNnDJnCZbgAugxiZelVR1c9KOU159xU9lyIZBzoyDGkyyravI4ag==
X-Received: by 2002:ac8:75c6:: with SMTP id z6mr8637707qtq.532.1644829597265; 
 Mon, 14 Feb 2022 01:06:37 -0800 (PST)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com.
 [209.85.219.50])
 by smtp.gmail.com with ESMTPSA id u35sm17571587qtc.26.2022.02.14.01.06.37
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 01:06:37 -0800 (PST)
Received: by mail-qv1-f50.google.com with SMTP id n6so14195396qvk.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Feb 2022 01:06:37 -0800 (PST)
X-Received: by 2002:a1f:7307:: with SMTP id o7mr818150vkc.0.1644829286141;
 Mon, 14 Feb 2022 01:01:26 -0800 (PST)
MIME-Version: 1.0
References: <20220212201631.12648-1-s.shtylyov@omp.ru>
 <20220212201631.12648-2-s.shtylyov@omp.ru>
 <20220214071351.pcvstrzkwqyrg536@pengutronix.de>
In-Reply-To: <20220214071351.pcvstrzkwqyrg536@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 Feb 2022 10:01:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWi8gno_FBbc=AwsdRtDJik8_bANjQrrRtUOOBRjFN=KA@mail.gmail.com>
Message-ID: <CAMuHMdWi8gno_FBbc=AwsdRtDJik8_bANjQrrRtUOOBRjFN=KA@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Mon, Feb 14, 2022 at 8:29 AM Uwe Kleine-König
   <u.kleine-koenig@pengutronix.de> wrote: > On Sat, Feb 12, 2022 at 11:16:30PM
    +0300, Sergey Shtylyov wrote: > > This patch is based on the former Andy
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.180 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nJXJj-0003uU-5f
X-Mailman-Approved-At: Mon, 14 Feb 2022 20:31:50 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] platform: make
 platform_get_irq_optional() optional
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, kvm@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Peter Korsgaard <peter@korsgaard.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 linux-pwm@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Corey Minyard <minyard@acm.org>, linux-pm@vger.kernel.org,
 John Garry <john.garry@huawei.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net, Jaroslav Kysela <perex@perex.cz>,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Zha Qipeng <qipeng.zha@intel.com>, Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Brian Norris <computersforpeace@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gTW9uLCBGZWIgMTQsIDIwMjIgYXQgODoyOSBBTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBTYXQsIEZlYiAx
MiwgMjAyMiBhdCAxMToxNjozMFBNICswMzAwLCBTZXJnZXkgU2h0eWx5b3Ygd3JvdGU6Cj4gPiBU
aGlzIHBhdGNoIGlzIGJhc2VkIG9uIHRoZSBmb3JtZXIgQW5keSBTaGV2Y2hlbmtvJ3MgcGF0Y2g6
Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIxMDMzMTE0NDUyNi4xOTQz
OS0xLWFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbS8KPiA+Cj4gPiBDdXJyZW50bHkg
cGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHJldHVybnMgYW4gZXJyb3IgY29kZSBldmVuIGlm
IElSUQo+ID4gcmVzb3VyY2Ugc2ltcGx5IGhhcyBub3QgYmVlbiBmb3VuZC4gIEl0IHByZXZlbnRz
IHRoZSBjYWxsZXJzIGZyb20gYmVpbmcKPiA+IGVycm9yIGNvZGUgYWdub3N0aWMgaW4gdGhlaXIg
ZXJyb3IgaGFuZGxpbmc6Cj4gPgo+ID4gICAgICAgcmV0ID0gcGxhdGZvcm1fZ2V0X2lycV9vcHRp
b25hbCguLi4pOwo+ID4gICAgICAgaWYgKHJldCA8IDAgJiYgcmV0ICE9IC1FTlhJTykKPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsgLy8gcmVzcGVjdCBkZWZlcnJlZCBwcm9iZQo+ID4gICAg
ICAgaWYgKHJldCA+IDApCj4gPiAgICAgICAgICAgICAgIC4uLndlIGdldCBhbiBJUlEuLi4KPiA+
Cj4gPiBBbGwgb3RoZXIgKl9vcHRpb25hbCgpIEFQSXMgc2VlbSB0byByZXR1cm4gMCBvciBOVUxM
IGluIGNhc2UgYW4gb3B0aW9uYWwKPiA+IHJlc291cmNlIGlzIG5vdCBhdmFpbGFibGUuICBMZXQn
cyBmb2xsb3cgdGhpcyBnb29kIGV4YW1wbGUsIHNvIHRoYXQgdGhlCj4gPiBjYWxsZXJzIHdvdWxk
IGxvb2sgbGlrZToKPiA+Cj4gPiAgICAgICByZXQgPSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFs
KC4uLik7Cj4gPiAgICAgICBpZiAocmV0IDwgMCkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiA+ICAgICAgIGlmIChyZXQgPiAwKQo+ID4gICAgICAgICAgICAgICAuLi53ZSBnZXQgYW4g
SVJRLi4uCj4gPgo+ID4gUmVwb3J0ZWQtYnk6IE1hdHRoaWFzIFNjaGlmZmVyIDxtYXR0aGlhcy5z
Y2hpZmZlckBldy50cS1ncm91cC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgU2h0eWx5
b3YgPHMuc2h0eWx5b3ZAb21wLnJ1Pgo+Cj4gV2hpbGUgdGhpcyBwYXRjaCBpcyBiZXR0ZXIgdGhh
biB2MSwgSSBzdGlsbCBkb24ndCBsaWtlIGl0IGZvciB0aGUKPiByZWFzb25zIGRpc2N1c3NlZCBm
b3IgdjEuIChpLmUuIDAgaXNuJ3QgdXNhYmxlIGFzIGEgZHVtbXkgdmFsdWUgd2hpY2ggSQo+IGNv
bnNpZGVyIHRoZSByZWFsIGFkdmFudGFnZSBmb3IgdGhlIG90aGVyIF9nZXRfb3B0aW9uYWwoKSBm
dW5jdGlvbnMuKQoKSU1ITyB0aGUgcmVhbCBhZHZhbnRhZ2UgaXMgdGhlIHNpbXBsaWZpZWQgZXJy
b3IgaGFuZGxpbmcsIHdoaWNoIGlzIHRoZQphcmVhIHdoZXJlIG1vc3Qgb2YgdGhlIGN1cnJlbnQg
YnVncyBhcmUuIFNvIEkgYXBwbGF1ZCB0aGUgY29yZSBjaGFuZ2UuCgpBbHNvIElNSE8sIHRoZSBk
dW1teSB2YWx1ZSBoYW5kbGluZyBpcyBhIHJlZCBoZXJyaW5nLiAgQ29udHJhcnkgdG8Kb3B0aW9u
YWwgY2xvY2tzIGFuZCByZXNldHMsIGEgbWlzc2luZyBvcHRpb25hbCBpbnRlcnJ1cHQgZG9lcyBu
b3QKYWx3YXlzIG1lYW4gdGhlcmUgaXMgbm90aGluZyB0byBkbzogaW4gY2FzZSBvZiBwb2xsaW5n
LCBzb21ldGhpbmcKZWxzZSBtdXN0IGRlZmluaXRlbHkgYmUgZG9uZS4gIFNvIGV2ZW4gaWYgcmVx
dWVzdF9pcnEoKSB3b3VsZCBhY2NlcHQKYSBkdW1teSBpbnRlcnJ1cHQgemVybyBhbmQganVzdCBk
byBub3RoaW5nLCBpdCB3b3VsZCBnaXZlIHRoZSBmYWxzZQppbXByZXNzaW9uIHRoYXQgdGhhdCBp
cyBhbGwgdGhlcmUgaXMgdG8gZG8sIHdoaWxlIGFuIGFjdHVhbCBjaGVjawpmb3IgemVybyB3aXRo
IHBvbGxpbmcgY29kZSBoYW5kbGluZyBtYXkgc3RpbGwgbmVlZCB0byBiZSBwcmVzZW50LAp0aHVz
IGxlYWRpbmcgdG8gbW9yZSBub3QgbGVzcyBidWdzLgoKPiBBcGFydCBmcm9tIHRoYXQsIEkgdGhp
bmsgdGhlIHN1YmplY3QgaXMgYmFkbHkgY2hvc2VuLiBXaXRoICJNYWtlCj4gc29tZWZ1bmMoKSBv
cHRpb25hbCIgSSB3b3VsZCBleHBlY3QgdGhhdCB5b3UgaW50cm9kdWNlIGEgS2NvbmZpZyBzeW1i
b2wKPiB0aGF0IHJlc3VsdHMgaW4gdGhlIGZ1bmN0aW9uIG5vdCBiZWluZyBhdmFpbGFibGUgd2hl
biBkaXNhYmxlZC4KCkFncmVlZC4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAg
ICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2Yg
TGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNv
bnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2Vy
LiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFt
bWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
