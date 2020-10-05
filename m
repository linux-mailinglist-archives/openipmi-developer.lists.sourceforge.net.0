Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E256F283167
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Oct 2020 10:05:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kPLUa-0008Kp-MQ; Mon, 05 Oct 2020 08:05:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1kPLUa-0008Kd-Bp
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 08:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=; b=M536opwpzufIuZ3rEqPF9E4GqJ
 R2d03hu7IsiEWgji9PBDs+PNUcHqXF2Ute90+HzNze2tD//RHhnA3v9UQkA/lKO6e8A6u2OoAfIZd
 4zEV7cBWvhnfyZAMeIU2R/drkbWTnG3Pfz2UtKVFVv3a/2F8gfaJJCW5IEcD+FAeGVTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=; b=P9w0XXKDIaR6u/Jyw/VIYJvMHF
 h2W82XYlnrPHg+nNDnAiNXkEKTle0mWSQ7rJsBoon1AP/ntVaWh2Dz5Oi5ALcnaAqIV2c5v3YOzAF
 zXGQwR/9hB4Wa2hMKRk7EYtY4ktcqlMqU9w+cRUTFQYRQtcAi8MZ2SqhclYK+NTYZ5g0=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPLUQ-00H1wI-Lj
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 08:05:08 +0000
Received: by mail-wr1-f67.google.com with SMTP id s12so8398495wrw.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Oct 2020 01:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=;
 b=QT2sz2z2T2ObbOF9cBuqPj/xMs2V2JkpGaC1yQPewHnLjCK6KfpJxnFBd52Yg4AGmP
 VJxRGRPxaRQLhLWf/cJj+4TFWIvc5S6rpMyihLW8guAo+UvNRqZKoELqvBpOePuA/Etp
 z293SdQf8ZGebrwCEz1gY7IlvwFjzz13UZb9UEwJiawxT5K21aKdmv/U8ZWx8aU8cdsz
 g1EJ2lezQTBEJzLkUS6vaHwbRc5HEANA2MQBDDgPE/harsOdRDrcIYwSmq3urQxn7+oQ
 VI6XlJwzca0RWlRBNRLXanZ5iKvZaicHTe2BxzY/5qO5xvvbJ/G2d1fmd5VfFwE503zT
 3Stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=;
 b=k0Rat+HKauOz88FeZYMg/p4hNBgQWD47yg6nxc42GJxxIMSz6UXoJiXruMFtfTwPVv
 bvY0CQSVyfMZOKp59pn14gKz/ypZMtg8UtLii19mZZ9T08xZr+mcxmkMksf5B6PcMcBw
 vqtNjxWH1UvizuC4yosH5ZsYK6/9QqLb5CzumqqVYEk7sg/d8/cZ75LL5mfzrcTN9ygO
 1dAa8AWXvJNC8MeilCjP1U8Fox2DdwsWeM++okhg63hQCD8RKBFCdoQMeZlXsOIo+e8A
 EDn3Oi0XqNfl/6VSszvhlxFk1sT1DiQJwIXoYX39Zvsa3SPu6wuAL0q7m2PldzX14nk6
 nXhw==
X-Gm-Message-State: AOAM5305tsqOSHX6Y9Hvrl9+uZo9cNyFdvt1Oca4ZUhayoFN+gv+dtIA
 YI92/GKUIztqPtA5OpGAuqAL/g==
X-Google-Smtp-Source: ABdhPJxB5n46P+iT3QRjzewwc6VgfO5oWkwQMA51B+oAEZSgUCF8P3GFXLcjkKteouHQRqUkrIZvVQ==
X-Received: by 2002:adf:f10e:: with SMTP id r14mr9419051wro.337.1601885092289; 
 Mon, 05 Oct 2020 01:04:52 -0700 (PDT)
Received: from dell ([91.110.221.236])
 by smtp.gmail.com with ESMTPSA id x2sm11899009wrl.13.2020.10.05.01.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 01:04:51 -0700 (PDT)
Date: Mon, 5 Oct 2020 09:04:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20201005080448.GT6148@dell>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
X-Headers-End: 1kPLUQ-00H1wI-Lj
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Another round of
 adding missing 'additionalProperties'
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAwMiBPY3QgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IEFub3RoZXIgcm91bmQg
b2Ygd2Fjay1hLW1vbGUuIFRoZSBqc29uLXNjaGVtYSBkZWZhdWx0IGlzIGFkZGl0aW9uYWwKPiB1
bmtub3duIHByb3BlcnRpZXMgYXJlIGFsbG93ZWQsIGJ1dCBmb3IgRFQgYWxsIHByb3BlcnRpZXMg
c2hvdWxkIGJlCj4gZGVmaW5lZC4KPiAKPiBDYzogVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVk
aW5nQGdtYWlsLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8u
b3JnPgo+IENjOiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4gQ2M6IFNoYXduIEd1
byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiBDYzogQmpvcm4gQW5kZXJzc29uIDxiam9ybi5hbmRl
cnNzb25AbGluYXJvLm9yZz4KPiBDYzogQmFvbGluIFdhbmcgPGJhb2xpbi53YW5nN0BnbWFpbC5j
b20+Cj4gQ2M6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiBDYzogSm9uYXRo
YW4gQ2FtZXJvbiA8amljMjNAa2VybmVsLm9yZz4KPiBDYzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFi
IDxtY2hlaGFiQGtlcm5lbC5vcmc+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGlu
Y2hhcnQrcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPgo+IENjOiBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4K
PiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj4gQ2M6IEJqb3Ju
IEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4gQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtl
cm5lbC5vcmc+Cj4gQ2M6IExpYW0gR2lyZHdvb2QgPGxnaXJkd29vZEBnbWFpbC5jb20+Cj4gQ2M6
IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogRGFuaWVsIExlemNhbm8gPGRhbmll
bC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gQ2M6IGxpbnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmcKPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1zcGlAdmdlci5r
ZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWdwaW9Admdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWh3
bW9uQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1paW9Admdlci5rZXJuZWwub3JnCj4gQ2M6
IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBDYzogbGludXgtbGVk
c0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3RtMzJAc3Qt
bWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+IENjOiBsaW51eC1taXBzQHZnZXIua2VybmVsLm9y
Zwo+IENjOiBsaW51eC1tbWNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1wbUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGludXgtcmVtb3RlcHJvY0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzog
bGludXgtc2VyaWFsQHZnZXIua2VybmVsLm9yZwo+IENjOiBhbHNhLWRldmVsQGFsc2EtcHJvamVj
dC5vcmcKPiBDYzogbGludXgtdXNiQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gCj4gSSdsbCB0YWtlIHRoaXMgdGhy
dSB0aGUgRFQgdHJlZS4KClsuLi5dCgo+ICAuLi4vYmluZGluZ3MvbWZkL2dhdGV3b3Jrcy1nc2Mu
eWFtbCAgICAgICAgICAgfCAgMiArKwo+ICAuLi4vYmluZGluZ3MvbWZkL3h5bG9uLGxvZ2ljdmMu
eWFtbCAgICAgICAgICAgfCAxNCArKysrKysrKysrKy0tCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxs
ZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRl
Y2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
