Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C833E89091D
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:23:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvLR-00038n-W7;
	Thu, 28 Mar 2024 19:23:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rpvLQ-00038g-MJ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GyFGSwdDS+8X5fWOjo2s+K1AMkRQoOt7S254R+rI76g=; b=CoWZlkHFWkhh1pk6LvIwxNY3mn
 7S7i0u2QYxYw81Ha7cFCfTSZ2iw7CbD3QdQWvLZvzSXZz32IpZRY0oAM90Kn4D+jIo79BpNKmpQUM
 UY0J1vjcysV02iM8jN06p+SE0CVQLJJ6+TaLeGrspyiwVqJ8MMF9iLSJcPPdQPh/23Kw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GyFGSwdDS+8X5fWOjo2s+K1AMkRQoOt7S254R+rI76g=; b=XPMMgiKrNSTdLOS6++oo9e5sx3
 8koEt2R4BgBzPzwLSsuoQesx4K2mPGJmFcRUYcwAeWv1b0AgFj10+ubVxbW1n/q2i70TvmxMdexIY
 eAgDIzWmMWmQw1IAIzd4EvnFbJh4r3aX2zZuz+wKmWI43s/DDzWU3mJS+O/b7fHa17pA=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvLM-0003jn-Sh for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:23:24 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6e707210ab9so57440a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 12:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711653790; x=1712258590; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=GyFGSwdDS+8X5fWOjo2s+K1AMkRQoOt7S254R+rI76g=;
 b=AOlC7WmduxeVWOd9QBMzEAyH8IKUkuIfdi26pHST/i4gQPSHcbTaFnMYKffb+raQok
 uEZk9cQruWuH10bcFgvzbdub5YuEfv/JS+yJH4REg2IEuC3hqhLv0NtRTCjZpj6A1eOE
 Sek2XeXYn0wDyRe4FmPLJ0iL0NRkQ4razTHcYQ2HgM+IWxHX+IcBORf6ORx61RGdNrcx
 XeAaT6xJRPli2A9er0OVi292MxWENjpbletGtVrFrftxE8P/519QrM611oSQyRdUyksr
 t8d/4YWx7MI9MlX9Bl+iccTwIAin/0q5pR9tP7P00/F0oViONgUwMEQQXkDP4e7n+8kS
 YVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711653790; x=1712258590;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GyFGSwdDS+8X5fWOjo2s+K1AMkRQoOt7S254R+rI76g=;
 b=EU0hvFihSDTiGQyl2B+UnzBUZ+Les7Llkkl3la+CCRCo+fnqplHcKek884ocMPimww
 b25er55NIJWDrAD7X5TS6uHamKwJtFGWODpbplRNglZqvph+K5j1PbOKdkwZIxxe64Tw
 0xGQau2HFwt0hWsQhwTU53S8uz6ZXdLYWloRUa0ucBcZ7AMSN1jzeeuMe0ZC7E6GH+dw
 9hDyhncSppEC5mffCyVWK8EpB9C/TU13QkTKO18QQwmOMXC4/A22mWB2XP9TqeDsJTEX
 NvABgyAD2rBzBpjam3L4W5EGw7c/hLAgAs6NVAU3YlPFGA0BCgmvpuZqNxtT+aSmSF7X
 FHjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7LVfHebvGb4vt6DiwqxiFPkJ6Nl08uz109vTE035uKCqM01+dahIwqw96bXIlJDJ5Q45evXc2K6HZDzzEdD40S9xhzBhaxsVb3Pt1H3wH0t0V3mxoTgh8
X-Gm-Message-State: AOJu0YxQWrT8I/2N2/aMhHyP24rf8M+gjyowo1Dzyi5Pgp7XHtSLunBV
 Mj3z/hejOYsii7pmnDatC1GZqKT7kAzfmOwNeY/ortAsqPSDNUk=
X-Google-Smtp-Source: AGHT+IEOtLqqAjjYrlHQS8qBEVcSrjCNrCoEQoC8julgRSnyZQ6WZe0wbYQEX2ZQYcLWJzzUoCRR0w==
X-Received: by 2002:a9d:7754:0:b0:6e6:6ea1:9820 with SMTP id
 t20-20020a9d7754000000b006e66ea19820mr191312otl.14.1711653790323; 
 Thu, 28 Mar 2024 12:23:10 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 n9-20020a9d64c9000000b006e6c9a56591sm344956otl.19.2024.03.28.12.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Mar 2024 12:23:09 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b987:69e:202a:697a])
 by serve.minyard.net (Postfix) with ESMTPSA id A60B1180011;
 Thu, 28 Mar 2024 19:23:08 +0000 (UTC)
Date: Thu, 28 Mar 2024 14:23:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen <allen.lkml@gmail.com>
Message-ID: <ZgXDmx1HvujsMYAR@mail.minyard.net>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
 <ZgRePyo2zC4A1Fp4@mail.minyard.net>
 <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 28, 2024 at 10:52:16AM -0700, Allen wrote: > On
    Wed, Mar 27, 2024 at 11:05 AM Corey Minyard <minyard@acm.org> wrote: >
   > > > I believe that work queues items are execute single-threaded [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.48 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1rpvLM-0003jn-Sh
Subject: Re: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to
 BH workqueue
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 keescook@chromium.org, oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgMTA6NTI6MTZBTSAtMDcwMCwgQWxsZW4gd3JvdGU6Cj4g
T24gV2VkLCBNYXIgMjcsIDIwMjQgYXQgMTE6MDXigK9BTSBDb3JleSBNaW55YXJkIDxtaW55YXJk
QGFjbS5vcmc+IHdyb3RlOgo+ID4KPiA+IEkgYmVsaWV2ZSB0aGF0IHdvcmsgcXVldWVzIGl0ZW1z
IGFyZSBleGVjdXRlIHNpbmdsZS10aHJlYWRlZCBmb3IgYSB3b3JrCj4gPiBxdWV1ZSwgc28gdGhp
cyBzaG91bGQgYmUgZ29vZC4gIEkgbmVlZCB0byB0ZXN0IHRoaXMsIHRob3VnaC4gIEl0IG1heSBi
ZQo+ID4gdGhhdCBhbiBJUE1JIGRldmljZSBjYW4gaGF2ZSBpdHMgb3duIHdvcmsgcXVldWU7IGl0
IG1heSBub3QgYmUgaW1wb3J0YW50Cj4gPiB0byBydW4gaXQgaW4gYmggY29udGV4dC4KPiAKPiAg
IEZhaXIgcG9pbnQuIENvdWxkIHlvdSBwbGVhc2UgbGV0IG1lIGtub3cgb25jZSB5b3UgaGF2ZSBo
YWQgYSBjaGFuY2UgdG8gdGVzdAo+IHRoZXNlIGNoYW5nZXMuIE1lYW53aGlsZSwgSSB3aWxsIHdv
cmsgb24gUkZDIHdoZXJlaW4gSVBNSSB3aWxsIGhhdmUgaXRzIG93bgo+IHdvcmtxdWV1ZS4KPiAK
PiAgVGhhbmtzIGZvciB0YWtpbmcgdGltZSBvdXQgdG8gcmV2aWV3LgoKQWZ0ZXIgbG9va2luZyBh
bmQgdGhpbmtpbmcgYWJvdXQgaXQgYSBiaXQsIGEgQkggY29udGV4dCBpcyBzdGlsbApwcm9iYWJs
eSB0aGUgYmVzdCBmb3IgdGhpcy4KCkkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCB1bmRlciBsb2Fk
IGFuZCB2YXJpb3VzIHNjZW5hcmlvcyBhbmQgaXQgc2VlbXMKdG8gd29yayBvay4gIFNvOgoKVGVz
dGVkLWJ5OiBDb3JleSBNaW55YXJkIDxjbWlueWFyZEBtdmlzdGEuY29tPgpBY2tlZC1ieTogQ29y
ZXkgTWlueWFyZCA8Y21pbnlhcmRAbXZpc3RhLmNvbT4KCk9yIEkgY2FuIHRha2UgdGhpcyBpbnRv
IG15IHRyZWUuCgotY29yZXkKCj4gCj4gLSBBbGxlbgo+IAo+ID4KPiA+IC1jb3JleQo+ID4KPiA+
ID4KPiA+ID4gQmFzZWQgb24gdGhlIHdvcmsgZG9uZSBieSBUZWp1biBIZW8gPHRqQGtlcm5lbC5v
cmc+Cj4gPiA+IEJyYW5jaDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdGovd3EuZ2l0IGZvci02MTAKPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxs
ZW4gUGFpcyA8YWxsZW4ubGttbEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCAzMCArKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2do
YW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+ID4gPiBpbmRl
eCBiMGVlZGM0NTk1YjMuLmZjZTJhMmRiZGM4MiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiA+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkv
aXBtaV9tc2doYW5kbGVyLmMKPiA+ID4gQEAgLTM2LDEyICszNiwxMyBAQAo+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L25vc3BlYy5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPiA+
ID4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3dvcmtx
dWV1ZS5oPgo+ID4gPgo+ID4gPiAgI2RlZmluZSBJUE1JX0RSSVZFUl9WRVJTSU9OICIzOS4yIgo+
ID4gPgo+ID4gPiAgc3RhdGljIHN0cnVjdCBpcG1pX3JlY3ZfbXNnICppcG1pX2FsbG9jX3JlY3Zf
bXNnKHZvaWQpOwo+ID4gPiAgc3RhdGljIGludCBpcG1pX2luaXRfbXNnaGFuZGxlcih2b2lkKTsK
PiA+ID4gLXN0YXRpYyB2b2lkIHNtaV9yZWN2X3Rhc2tsZXQoc3RydWN0IHRhc2tsZXRfc3RydWN0
ICp0KTsKPiA+ID4gK3N0YXRpYyB2b2lkIHNtaV9yZWN2X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0
ICp0KTsKPiA+ID4gIHN0YXRpYyB2b2lkIGhhbmRsZV9uZXdfcmVjdl9tc2dzKHN0cnVjdCBpcG1p
X3NtaSAqaW50Zik7Cj4gPiA+ICBzdGF0aWMgdm9pZCBuZWVkX3dhaXRlcihzdHJ1Y3QgaXBtaV9z
bWkgKmludGYpOwo+ID4gPiAgc3RhdGljIGludCBoYW5kbGVfb25lX3JlY3ZfbXNnKHN0cnVjdCBp
cG1pX3NtaSAqaW50ZiwKPiA+ID4gQEAgLTQ5OCwxMyArNDk5LDEzIEBAIHN0cnVjdCBpcG1pX3Nt
aSB7Cj4gPiA+ICAgICAgIC8qCj4gPiA+ICAgICAgICAqIE1lc3NhZ2VzIHF1ZXVlZCBmb3IgZGVs
aXZlcnkuICBJZiBkZWxpdmVyeSBmYWlscyAob3V0IG9mIG1lbW9yeQo+ID4gPiAgICAgICAgKiBm
b3IgaW5zdGFuY2UpLCBUaGV5IHdpbGwgc3RheSBpbiBoZXJlIHRvIGJlIHByb2Nlc3NlZCBsYXRl
ciBpbiBhCj4gPiA+IC0gICAgICAqIHBlcmlvZGljIHRpbWVyIGludGVycnVwdC4gIFRoZSB0YXNr
bGV0IGlzIGZvciBoYW5kbGluZyByZWNlaXZlZAo+ID4gPiArICAgICAgKiBwZXJpb2RpYyB0aW1l
ciBpbnRlcnJ1cHQuICBUaGUgd29yayBpcyBmb3IgaGFuZGxpbmcgcmVjZWl2ZWQKPiA+ID4gICAg
ICAgICogbWVzc2FnZXMgZGlyZWN0bHkgZnJvbSB0aGUgaGFuZGxlci4KPiA+ID4gICAgICAgICov
Cj4gPiA+ICAgICAgIHNwaW5sb2NrX3QgICAgICAgd2FpdGluZ19yY3ZfbXNnc19sb2NrOwo+ID4g
PiAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIHdhaXRpbmdfcmN2X21zZ3M7Cj4gPiA+ICAgICAgIGF0
b21pY190ICAgICAgICAgd2F0Y2hkb2dfcHJldGltZW91dHNfdG9fZGVsaXZlcjsKPiA+ID4gLSAg
ICAgc3RydWN0IHRhc2tsZXRfc3RydWN0IHJlY3ZfdGFza2xldDsKPiA+ID4gKyAgICAgc3RydWN0
IHdvcmtfc3RydWN0IHJlY3Zfd29yazsKPiA+ID4KPiA+ID4gICAgICAgc3BpbmxvY2tfdCAgICAg
ICAgICAgICB4bWl0X21zZ3NfbG9jazsKPiA+ID4gICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAg
ICB4bWl0X21zZ3M7Cj4gPiA+IEBAIC03MDQsNyArNzA1LDcgQEAgc3RhdGljIHZvaWQgY2xlYW5f
dXBfaW50ZXJmYWNlX2RhdGEoc3RydWN0IGlwbWlfc21pICppbnRmKQo+ID4gPiAgICAgICBzdHJ1
Y3QgY21kX3JjdnIgICpyY3ZyLCAqcmN2cjI7Cj4gPiA+ICAgICAgIHN0cnVjdCBsaXN0X2hlYWQg
bGlzdDsKPiA+ID4KPiA+ID4gLSAgICAgdGFza2xldF9raWxsKCZpbnRmLT5yZWN2X3Rhc2tsZXQp
Owo+ID4gPiArICAgICBjYW5jZWxfd29ya19zeW5jKCZpbnRmLT5yZWN2X3dvcmspOwo+ID4gPgo+
ID4gPiAgICAgICBmcmVlX3NtaV9tc2dfbGlzdCgmaW50Zi0+d2FpdGluZ19yY3ZfbXNncyk7Cj4g
PiA+ICAgICAgIGZyZWVfcmVjdl9tc2dfbGlzdCgmaW50Zi0+d2FpdGluZ19ldmVudHMpOwo+ID4g
PiBAQCAtMTMxOSw3ICsxMzIwLDcgQEAgc3RhdGljIHZvaWQgZnJlZV91c2VyKHN0cnVjdCBrcmVm
ICpyZWYpCj4gPiA+ICB7Cj4gPiA+ICAgICAgIHN0cnVjdCBpcG1pX3VzZXIgKnVzZXIgPSBjb250
YWluZXJfb2YocmVmLCBzdHJ1Y3QgaXBtaV91c2VyLCByZWZjb3VudCk7Cj4gPiA+Cj4gPiA+IC0g
ICAgIC8qIFNSQ1UgY2xlYW51cCBtdXN0IGhhcHBlbiBpbiB0YXNrIGNvbnRleHQuICovCj4gPiA+
ICsgICAgIC8qIFNSQ1UgY2xlYW51cCBtdXN0IGhhcHBlbiBpbiB3b3JrIGNvbnRleHQuICovCj4g
PiA+ICAgICAgIHF1ZXVlX3dvcmsocmVtb3ZlX3dvcmtfd3EsICZ1c2VyLT5yZW1vdmVfd29yayk7
Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+IEBAIC0zNjA1LDggKzM2MDYsNyBAQCBpbnQgaXBtaV9hZGRf
c21pKHN0cnVjdCBtb2R1bGUgICAgICAgICAqb3duZXIsCj4gPiA+ICAgICAgIGludGYtPmN1cnJf
c2VxID0gMDsKPiA+ID4gICAgICAgc3Bpbl9sb2NrX2luaXQoJmludGYtPndhaXRpbmdfcmN2X21z
Z3NfbG9jayk7Cj4gPiA+ICAgICAgIElOSVRfTElTVF9IRUFEKCZpbnRmLT53YWl0aW5nX3Jjdl9t
c2dzKTsKPiA+ID4gLSAgICAgdGFza2xldF9zZXR1cCgmaW50Zi0+cmVjdl90YXNrbGV0LAo+ID4g
PiAtICAgICAgICAgICAgICAgICAgc21pX3JlY3ZfdGFza2xldCk7Cj4gPiA+ICsgICAgIElOSVRf
V09SSygmaW50Zi0+cmVjdl93b3JrLCBzbWlfcmVjdl93b3JrKTsKPiA+ID4gICAgICAgYXRvbWlj
X3NldCgmaW50Zi0+d2F0Y2hkb2dfcHJldGltZW91dHNfdG9fZGVsaXZlciwgMCk7Cj4gPiA+ICAg
ICAgIHNwaW5fbG9ja19pbml0KCZpbnRmLT54bWl0X21zZ3NfbG9jayk7Cj4gPiA+ICAgICAgIElO
SVRfTElTVF9IRUFEKCZpbnRmLT54bWl0X21zZ3MpOwo+ID4gPiBAQCAtNDc3OSw3ICs0Nzc5LDcg
QEAgc3RhdGljIHZvaWQgaGFuZGxlX25ld19yZWN2X21zZ3Moc3RydWN0IGlwbWlfc21pICppbnRm
KQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICogVG8gcHJlc2VydmUgbWVzc2FnZSBvcmRl
ciwgcXVpdCBpZiB3ZQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICogY2FuJ3QgaGFuZGxl
IGEgbWVzc2FnZS4gIEFkZCB0aGUgbWVzc2FnZQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICogYmFjayBhdCB0aGUgaGVhZCwgdGhpcyBpcyBzYWZlIGJlY2F1c2UgdGhpcwo+ID4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICogdGFza2xldCBpcyB0aGUgb25seSB0aGluZyB0aGF0IHB1bGxz
IHRoZQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICogd29yayBpcyB0aGUgb25seSB0aGlu
ZyB0aGF0IHB1bGxzIHRoZQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICogbWVzc2FnZXMu
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgIGxpc3RfYWRkKCZzbWlfbXNnLT5saW5rLCAmaW50Zi0+d2FpdGluZ19yY3ZfbXNncyk7Cj4g
PiA+IEBAIC00ODEyLDEwICs0ODEyLDEwIEBAIHN0YXRpYyB2b2lkIGhhbmRsZV9uZXdfcmVjdl9t
c2dzKHN0cnVjdCBpcG1pX3NtaSAqaW50ZikKPiA+ID4gICAgICAgfQo+ID4gPiAgfQo+ID4gPgo+
ID4gPiAtc3RhdGljIHZvaWQgc21pX3JlY3ZfdGFza2xldChzdHJ1Y3QgdGFza2xldF9zdHJ1Y3Qg
KnQpCj4gPiA+ICtzdGF0aWMgdm9pZCBzbWlfcmVjdl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAq
dCkKPiA+ID4gIHsKPiA+ID4gICAgICAgdW5zaWduZWQgbG9uZyBmbGFncyA9IDA7IC8qIGtlZXAg
dXMgd2FybmluZy1mcmVlLiAqLwo+ID4gPiAtICAgICBzdHJ1Y3QgaXBtaV9zbWkgKmludGYgPSBm
cm9tX3Rhc2tsZXQoaW50ZiwgdCwgcmVjdl90YXNrbGV0KTsKPiA+ID4gKyAgICAgc3RydWN0IGlw
bWlfc21pICppbnRmID0gZnJvbV93b3JrKGludGYsIHQsIHJlY3Zfd29yayk7Cj4gPiA+ICAgICAg
IGludCBydW5fdG9fY29tcGxldGlvbiA9IGludGYtPnJ1bl90b19jb21wbGV0aW9uOwo+ID4gPiAg
ICAgICBzdHJ1Y3QgaXBtaV9zbWlfbXNnICpuZXdtc2cgPSBOVUxMOwo+ID4gPgo+ID4gPiBAQCAt
NDg2Niw3ICs0ODY2LDcgQEAgdm9pZCBpcG1pX3NtaV9tc2dfcmVjZWl2ZWQoc3RydWN0IGlwbWlf
c21pICppbnRmLAo+ID4gPgo+ID4gPiAgICAgICAvKgo+ID4gPiAgICAgICAgKiBUbyBwcmVzZXJ2
ZSBtZXNzYWdlIG9yZGVyLCB3ZSBrZWVwIGEgcXVldWUgYW5kIGRlbGl2ZXIgZnJvbQo+ID4gPiAt
ICAgICAgKiBhIHRhc2tsZXQuCj4gPiA+ICsgICAgICAqIGEgd29yay4KPiA+ID4gICAgICAgICov
Cj4gPiA+ICAgICAgIGlmICghcnVuX3RvX2NvbXBsZXRpb24pCj4gPiA+ICAgICAgICAgICAgICAg
c3Bpbl9sb2NrX2lycXNhdmUoJmludGYtPndhaXRpbmdfcmN2X21zZ3NfbG9jaywgZmxhZ3MpOwo+
ID4gPiBAQCAtNDg4Nyw5ICs0ODg3LDkgQEAgdm9pZCBpcG1pX3NtaV9tc2dfcmVjZWl2ZWQoc3Ry
dWN0IGlwbWlfc21pICppbnRmLAo+ID4gPiAgICAgICAgICAgICAgIHNwaW5fdW5sb2NrX2lycXJl
c3RvcmUoJmludGYtPnhtaXRfbXNnc19sb2NrLCBmbGFncyk7Cj4gPiA+Cj4gPiA+ICAgICAgIGlm
IChydW5fdG9fY29tcGxldGlvbikKPiA+ID4gLSAgICAgICAgICAgICBzbWlfcmVjdl90YXNrbGV0
KCZpbnRmLT5yZWN2X3Rhc2tsZXQpOwo+ID4gPiArICAgICAgICAgICAgIHNtaV9yZWN2X3dvcmso
JmludGYtPnJlY3Zfd29yayk7Cj4gPiA+ICAgICAgIGVsc2UKPiA+ID4gLSAgICAgICAgICAgICB0
YXNrbGV0X3NjaGVkdWxlKCZpbnRmLT5yZWN2X3Rhc2tsZXQpOwo+ID4gPiArICAgICAgICAgICAg
IHF1ZXVlX3dvcmsoc3lzdGVtX2JoX3dxLCAmaW50Zi0+cmVjdl93b3JrKTsKPiA+ID4gIH0KPiA+
ID4gIEVYUE9SVF9TWU1CT0woaXBtaV9zbWlfbXNnX3JlY2VpdmVkKTsKPiA+ID4KPiA+ID4gQEAg
LTQ4OTksNyArNDg5OSw3IEBAIHZvaWQgaXBtaV9zbWlfd2F0Y2hkb2dfcHJldGltZW91dChzdHJ1
Y3QgaXBtaV9zbWkgKmludGYpCj4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPgo+ID4g
PiAgICAgICBhdG9taWNfc2V0KCZpbnRmLT53YXRjaGRvZ19wcmV0aW1lb3V0c190b19kZWxpdmVy
LCAxKTsKPiA+ID4gLSAgICAgdGFza2xldF9zY2hlZHVsZSgmaW50Zi0+cmVjdl90YXNrbGV0KTsK
PiA+ID4gKyAgICAgcXVldWVfd29yayhzeXN0ZW1fYmhfd3EsICZpbnRmLT5yZWN2X3dvcmspOwo+
ID4gPiAgfQo+ID4gPiAgRVhQT1JUX1NZTUJPTChpcG1pX3NtaV93YXRjaGRvZ19wcmV0aW1lb3V0
KTsKPiA+ID4KPiA+ID4gQEAgLTUwNjgsNyArNTA2OCw3IEBAIHN0YXRpYyBib29sIGlwbWlfdGlt
ZW91dF9oYW5kbGVyKHN0cnVjdCBpcG1pX3NtaSAqaW50ZiwKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGZsYWdzKTsKPiA+ID4gICAgICAgfQo+ID4gPgo+ID4gPiAt
ICAgICB0YXNrbGV0X3NjaGVkdWxlKCZpbnRmLT5yZWN2X3Rhc2tsZXQpOwo+ID4gPiArICAgICBx
dWV1ZV93b3JrKHN5c3RlbV9iaF93cSwgJmludGYtPnJlY3Zfd29yayk7Cj4gPiA+Cj4gPiA+ICAg
ICAgIHJldHVybiBuZWVkX3RpbWVyOwo+ID4gPiAgfQo+ID4gPiAtLQo+ID4gPiAyLjE3LjEKPiA+
ID4KPiA+ID4KPiA+Cj4gCj4gCj4gLS0gCj4gICAgICAgIC0gQWxsZW4KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxv
cGVyCg==
