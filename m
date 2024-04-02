Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 718DF8954C4
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Apr 2024 15:11:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rrdvP-0000VA-8d;
	Tue, 02 Apr 2024 13:11:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vkoul@kernel.org>) id 1rrdvO-0000V4-6c
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 13:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VEVY8ISKO5sb2jFIloFMt5L/HBE8lTDq/QzxP5thYi8=; b=BSHq3UBFzqrc8OJg5PausDNqHK
 97NFRMu/11PyrqKb+6DtQAd1CppmQ7Q1AcjDEgGRRSAip6iiJO+MIGA0z0/a+DoABagQyi+lplXwR
 gOxpmkb8OM5LvnwZFysrigfdbHk/aK0GtjARY9Hj5xpduSnPwL7E0IZHmhklWM6/ygAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VEVY8ISKO5sb2jFIloFMt5L/HBE8lTDq/QzxP5thYi8=; b=iQhJU7YCLrQTZENlvKev3ZXdw+
 vWU4VI53qgyGIsK7eTJfkdMbPggZlpc8K5BYKfzVbvUlKG0KQnDbcwTxd/qoPz8N0gFukzFdRVi9i
 +6I9rW/re4BhFp52BdiCbyw80MVnoadCEEoXEhGzUFg5s2HIL+2zYp61Q1rxnCvr0b9A=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrdvN-0001iM-Af for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 13:11:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 16DE360FE3;
 Tue,  2 Apr 2024 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECE50C433F1;
 Tue,  2 Apr 2024 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712063486;
 bh=9zAsnZKUtdaB+0oUBoSFWoiBkfOWRDSb/L5GPa9FOno=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pLBmLWbFq8b7R4iZ1CSvRnROpQc318dtdynLw3zTplx/2SSnxsPhnBaGB0KWLxJLw
 gtTVGsvy4tfXtBGJpBXwq9+p3MCPwkvK/hDkMvCwjFUh5usnZu6XFTibfhvcKn+2H6
 bNq+gdNLc+F4UpxqMWgGKmEwi+KPVyCSJwAIqsT2U4GGmN/LnMTaAplp/AjMnXlBu3
 Ft/ordeAQQOyjQYy8NAB2+7Nq/5pKWCsboYnCGnNR1VKTyBFWEf/lcch7254rsWnWE
 MLVvNT3x0cyP38rdvhtkwlombEcbUi6JLHcn3CjFq0MSnQTG+8Cf+UPPNEYFD7jwHP
 CjyG1mwKRgoUQ==
Date: Tue, 2 Apr 2024 18:41:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <ZgwD-iScEb9zzB8H@matsya>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com>
 <CACRpkdaSBGe0EFm1gK-7qPK4e6T2H1dxFXjhJqO2hWCm1-bNdA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaSBGe0EFm1gK-7qPK4e6T2H1dxFXjhJqO2hWCm1-bNdA@mail.gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 02-04-24, 14:25, Linus Walleij wrote: > Hi Allen, > > thanks
    for your patch! > > On Wed, Mar 27, 2024 at 5:03 PM Allen Pais <apais@linux.microsoft.com>
    wrote: > > > The only generic interface to [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rrdvN-0001iM-Af
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
 linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, HaraldWelte@viatech.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
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
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, wangzhou1@hisilicon.com,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMDItMDQtMjQsIDE0OjI1LCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IEhpIEFsbGVuLAo+IAo+
IHRoYW5rcyBmb3IgeW91ciBwYXRjaCEKPiAKPiBPbiBXZWQsIE1hciAyNywgMjAyNCBhdCA1OjAz
4oCvUE0gQWxsZW4gUGFpcyA8YXBhaXNAbGludXgubWljcm9zb2Z0LmNvbT4gd3JvdGU6Cj4gCj4g
PiBUaGUgb25seSBnZW5lcmljIGludGVyZmFjZSB0byBleGVjdXRlIGFzeW5jaHJvbm91c2x5IGlu
IHRoZSBCSCBjb250ZXh0IGlzCj4gPiB0YXNrbGV0OyBob3dldmVyLCBpdCdzIG1hcmtlZCBkZXBy
ZWNhdGVkIGFuZCBoYXMgc29tZSBkZXNpZ24gZmxhd3MuIFRvCj4gPiByZXBsYWNlIHRhc2tsZXRz
LCBCSCB3b3JrcXVldWUgc3VwcG9ydCB3YXMgcmVjZW50bHkgYWRkZWQuIEEgQkggd29ya3F1ZXVl
Cj4gPiBiZWhhdmVzIHNpbWlsYXJseSB0byByZWd1bGFyIHdvcmtxdWV1ZXMgZXhjZXB0IHRoYXQg
dGhlIHF1ZXVlZCB3b3JrIGl0ZW1zCj4gPiBhcmUgZXhlY3V0ZWQgaW4gdGhlIEJIIGNvbnRleHQu
Cj4gPgo+ID4gVGhpcyBwYXRjaCBjb252ZXJ0cyBkcml2ZXJzL2RtYS8qIGZyb20gdGFza2xldCB0
byBCSCB3b3JrcXVldWUuCj4gPgo+ID4gQmFzZWQgb24gdGhlIHdvcmsgZG9uZSBieSBUZWp1biBI
ZW8gPHRqQGtlcm5lbC5vcmc+Cj4gPiBCcmFuY2g6IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90ai93cS5naXQgZm9yLTYuMTAKPiA+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGxlbiBQYWlzIDxhbGxlbi5sa21sQGdtYWlsLmNvbT4KPiAoLi4uKQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hL3N0ZV9kbWE0MC5jIGIvZHJpdmVycy9kbWEvc3RlX2RtYTQwLmMK
PiAoLi4uKQo+ID4gICAgICAgICBpZiAoZDQwYy0+cGVuZGluZ190eCkKPiA+IC0gICAgICAgICAg
ICAgICB0YXNrbGV0X3NjaGVkdWxlKCZkNDBjLT50YXNrbGV0KTsKPiA+ICsgICAgICAgICAgICAg
ICBxdWV1ZV93b3JrKHN5c3RlbV9iaF93cSwgJmQ0MGMtPndvcmspOwo+IAo+IFdoeSBpcyAibXki
IGRyaXZlciBub3QgYWxsb3dlZCB0byB1c2Ugc3lzdGVtX2JoX2hpZ2hwcmlfd3E/Cj4gCj4gSSBj
YW4ndCBzZWUgdGhlIHJlYXNvbmluZyBiZXR3ZWVuIHNvbWUgZHJpdmVycyB1c2luZyBzeXN0ZW1f
Ymhfd3EKPiBhbmQgb3RoZXJzIGJlaW5nIGhpZ2hwcmk/Cj4gCj4gR2l2ZW4gdGhlIERNQSB1c2Vj
YXNlIEkgd291bGQgZXhwZWN0IHRoZW0gYWxsIHRvIGJlIGhpZ2ggcHJpby4KCkl0IGRpZG50IHVz
ZSB0YXNrbGV0X2hpX3NjaGVkdWxlKCksIEkgZ3Vlc3MgQWxsZW4gaGFzIGRvbmUgdGhlCmNvbnZl
cnNpb24gb2YgdGFza2xldF9zY2hlZHVsZSAtPiBzeXN0ZW1fYmhfd3EgYW5kIHRhc2tsZXRfaGlf
c2NoZWR1bGUKLT4gc3lzdGVtX2JoX2hpZ2hwcmlfd3EKCkFueXdheSwgd2UgYXJlIGdvaW5nIHRv
IHVzZSBhIGRtYSBxdWV1ZSBzbyBzaG91bGQgYmUgYmV0dGVyIHBlcmZvcm1hbmNlCgotLSAKflZp
bm9kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Bl
bmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L29wZW5pcG1pLWRldmVsb3Blcgo=
