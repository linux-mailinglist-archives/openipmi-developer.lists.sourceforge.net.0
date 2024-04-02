Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 821D68952E9
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Apr 2024 14:25:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rrdCp-0007iZ-9R;
	Tue, 02 Apr 2024 12:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linus.walleij@linaro.org>) id 1rrdCn-0007iL-Nd
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XYDEIQksW8zQ45WbeyUEVn5ldQ4luRyFOVVyheFSkHo=; b=jKUGiJ6n0RFR3ZkGz0A8eQJpi6
 5sWMKm89u7Jyl4weT0knkblDg90YyJ2BEStl2fhExmmg/8jcx/DEdMPhqZ+ebKl4b749jvjrvKQt0
 SFIQ8kzKhtxmj+dIAtrzNozvWu6UeuFswanRMCNidEnagrizA6LrEymVGdsoNpvZVqoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XYDEIQksW8zQ45WbeyUEVn5ldQ4luRyFOVVyheFSkHo=; b=LnxFxk8CxPbg8X3UYmQWeiVLMi
 kOB/hGMmqfytTLaDpZidmIUGME+/89UGWSwI2EbUIfnxNEB15MawO4uTGzuS+czvJvI+bpPGdtcPV
 fs+YlANHaoyT3xOe8bG7BsrMIsH4+9zZ+2MG/9FCz8WuGPEbhSCekXbB4NrkF4a4qj90=;
Received: from mail-yb1-f176.google.com ([209.85.219.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rrdCm-0008IH-SN for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:25:33 +0000
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-dc6d8bd612dso5091299276.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Apr 2024 05:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712060727; x=1712665527; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XYDEIQksW8zQ45WbeyUEVn5ldQ4luRyFOVVyheFSkHo=;
 b=ijPq8w7gckF2tCRwIgXgWPA95r0NCEgAmM9vZkLjaU0t5NY3sAEPbLH3Op32BvFhEa
 QI7xy8lgdbZQAlwZfwjEBqltLKC+4OMeQ8+raHqzdkC55NsXGWy8ilVtRes46vN+2LwS
 U9UXPkl3Sek6ckj2YwOodeH+RoTsWoVaQ4XK7SO/rdC1odFReb+9nEyITvSM9eFBCaV6
 vXLAokFHymw1/lzTW4MuD4S44PqKc+VcMZH/HSmiUl5Tng+/JUqS/XkuzbYZJn/G9od4
 ta4DFfQrd5igPx2BlBeLbi33MIKJLmqSHI8TUYCmBUmWZIn7Xasej/N+aaH4ZSjQZutF
 L8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712060727; x=1712665527;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XYDEIQksW8zQ45WbeyUEVn5ldQ4luRyFOVVyheFSkHo=;
 b=jqm2b3fUwUFW6zxScGrIzK35OFlIXk5gX4TWD/KFf2k12f3lQF0TasZ2fM0DhoEJOX
 tLBxT6opJst0HycG+skD0GOUG0k7uYypNaQrsZspGffs3P6//FkCHX3Gq0qqzCuDcckf
 kqUvzFhyvxCxvaBJqdCU3YUDBEdqsRYawYfR22+76yLLlpx2d1zdV2O8X3sivKQ+h1dt
 338u57/EagXLr1Uv3IIwiLMZqkzVvd7CeFrc2L5hSppUAMH8AmvuqweIXBAYr+Sb3SZe
 hmIDL8VbF7btnKYFuMHgVw3ZSrO8AmmV1+owD2scCVGPgg0gjBfSF6W8qo9twohmaC9E
 UYqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHVdN5GTK1Gb6pbM396Lzgr8gIcgLlz5xOV/CaAe6xntvSMhrIqGnUqftg7BL75KQJHZm1FJ9dwDpxGpIr8SzlQtfknsGRU3wUL/5oPXJyR1x7Jj1OTGmE
X-Gm-Message-State: AOJu0YxQKk76lfw0eTABn3hCrbUEWv2lrJ4NBVq65NaEjKKr0EoPnbKE
 drzIRqV6oAvIkXJPtqVoytdKMknobC6Fy11EyJYIon+6e1bu5YQXxmZX4v8tM2Z2EI3s09EDWFH
 9F6I4Ie6lnzunhcLe10Jxjmo1DIPzLdq3Yh/65A==
X-Google-Smtp-Source: AGHT+IFUrSspS0uEXi4Mtdf0lWq2f6Bt6/664idaePnQ5n7gs/Aofr4lkRbBJPYECBaOux5ZgxpPBc0T/C/GsKmHDRA=
X-Received: by 2002:a5b:104:0:b0:dcc:ec02:38b0 with SMTP id
 4-20020a5b0104000000b00dccec0238b0mr8733778ybx.64.1712060727251; Tue, 02 Apr
 2024 05:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com>
In-Reply-To: <20240327160314.9982-3-apais@linux.microsoft.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Apr 2024 14:25:15 +0200
Message-ID: <CACRpkdaSBGe0EFm1gK-7qPK4e6T2H1dxFXjhJqO2hWCm1-bNdA@mail.gmail.com>
To: Allen Pais <apais@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Allen, thanks for your patch! On Wed, Mar 27, 2024 at 5:03 PM
    Allen Pais <apais@linux.microsoft.com> wrote: 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.176 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1rrdCm-0008IH-SN
Subject: Re: [Openipmi-developer] [PATCH 2/9] dma: Convert from tasklet to
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com, Frank.Li@nxp.com,
 linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
 HaraldWelte@viatech.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com, manivannan.sadhasivam@linaro.org,
 linux-riscv@lists.infradead.org, kys@microsoft.com, robert.jarzmik@free.fr,
 haijie1@huawei.com, linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
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
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQWxsZW4sCgp0aGFua3MgZm9yIHlvdXIgcGF0Y2ghCgpPbiBXZWQsIE1hciAyNywgMjAyNCBh
dCA1OjAz4oCvUE0gQWxsZW4gUGFpcyA8YXBhaXNAbGludXgubWljcm9zb2Z0LmNvbT4gd3JvdGU6
Cgo+IFRoZSBvbmx5IGdlbmVyaWMgaW50ZXJmYWNlIHRvIGV4ZWN1dGUgYXN5bmNocm9ub3VzbHkg
aW4gdGhlIEJIIGNvbnRleHQgaXMKPiB0YXNrbGV0OyBob3dldmVyLCBpdCdzIG1hcmtlZCBkZXBy
ZWNhdGVkIGFuZCBoYXMgc29tZSBkZXNpZ24gZmxhd3MuIFRvCj4gcmVwbGFjZSB0YXNrbGV0cywg
Qkggd29ya3F1ZXVlIHN1cHBvcnQgd2FzIHJlY2VudGx5IGFkZGVkLiBBIEJIIHdvcmtxdWV1ZQo+
IGJlaGF2ZXMgc2ltaWxhcmx5IHRvIHJlZ3VsYXIgd29ya3F1ZXVlcyBleGNlcHQgdGhhdCB0aGUg
cXVldWVkIHdvcmsgaXRlbXMKPiBhcmUgZXhlY3V0ZWQgaW4gdGhlIEJIIGNvbnRleHQuCj4KPiBU
aGlzIHBhdGNoIGNvbnZlcnRzIGRyaXZlcnMvZG1hLyogZnJvbSB0YXNrbGV0IHRvIEJIIHdvcmtx
dWV1ZS4KPgo+IEJhc2VkIG9uIHRoZSB3b3JrIGRvbmUgYnkgVGVqdW4gSGVvIDx0akBrZXJuZWwu
b3JnPgo+IEJyYW5jaDogZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L3RqL3dxLmdpdCBmb3ItNi4xMAo+Cj4gU2lnbmVkLW9mZi1ieTogQWxsZW4gUGFpcyA8YWxs
ZW4ubGttbEBnbWFpbC5jb20+CiguLi4pCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3N0ZV9k
bWE0MC5jIGIvZHJpdmVycy9kbWEvc3RlX2RtYTQwLmMKKC4uLikKPiAgICAgICAgIGlmIChkNDBj
LT5wZW5kaW5nX3R4KQo+IC0gICAgICAgICAgICAgICB0YXNrbGV0X3NjaGVkdWxlKCZkNDBjLT50
YXNrbGV0KTsKPiArICAgICAgICAgICAgICAgcXVldWVfd29yayhzeXN0ZW1fYmhfd3EsICZkNDBj
LT53b3JrKTsKCldoeSBpcyAibXkiIGRyaXZlciBub3QgYWxsb3dlZCB0byB1c2Ugc3lzdGVtX2Jo
X2hpZ2hwcmlfd3E/CgpJIGNhbid0IHNlZSB0aGUgcmVhc29uaW5nIGJldHdlZW4gc29tZSBkcml2
ZXJzIHVzaW5nIHN5c3RlbV9iaF93cQphbmQgb3RoZXJzIGJlaW5nIGhpZ2hwcmk/CgpHaXZlbiB0
aGUgRE1BIHVzZWNhc2UgSSB3b3VsZCBleHBlY3QgdGhlbSBhbGwgdG8gYmUgaGlnaCBwcmlvLgoK
WW91cnMsCkxpbnVzIFdhbGxlaWoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
