Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 998AF89006E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 14:37:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rppwh-00043J-Gj;
	Thu, 28 Mar 2024 13:37:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linus.walleij@linaro.org>) id 1rppwf-00043D-57
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 13:37:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vhptj9/Vq4Rm0PoGzxaGiCJqIgDUZwkAbXDvc9ksjDI=; b=g075RbhfhTTGf/+6HwOH31Jw3z
 vjGlPDKazSdR1SWTz6+BxYkd7Iq70s3qrfTZee9Cfcl7M/d9Obr9zt0nHSDEIEteqAliRdP0zsPX9
 FvXv76zHZv+yzg61gfQdbYaXMg4DJKahyKAyELlBKwO4L2JdjZTDNgGKGFKFQGYA8lJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vhptj9/Vq4Rm0PoGzxaGiCJqIgDUZwkAbXDvc9ksjDI=; b=BRuGIZz/VZq4C0+iZLGdgviDo1
 PRnHgP6l7AbtyeTczor1bMAfW1XUrFq5lzlP8GAZOyVHAn8fTjmMLpO5FFDtQgdKIWYImKZsFZMnc
 nSfpzJEqudpkFm2MAg9B3k4xyIsbuEE3a6DtlCOSQi/cZ6P7hcZUEiYi9VtxXJD5NIoA=;
Received: from mail-yb1-f181.google.com ([209.85.219.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rppwd-0004BF-B8 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 13:37:29 +0000
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-d9b9adaf291so897406276.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 06:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711633042; x=1712237842; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vhptj9/Vq4Rm0PoGzxaGiCJqIgDUZwkAbXDvc9ksjDI=;
 b=VEsU8U0N0gaKkB8C5n2/M4QL+ZdQessDtGPd2x3+lLHLEcupLnUWi75ReMti/cQat1
 DqAYIXfMxUFtb387QJGQdJ78SzT44uAZibPAduvb4Rr6D+pnOb3sBz7Y//GlJFTX4tY4
 zbIvuTqMBIBph4WY8xH3eLFaeHIZcGK73PVruDdvXDK6SmDA7+HWZNOk3MsiYHe9x1Cv
 nHGVSOGzI8rjbl6OqZz4jZWCFfFVaN/rTWf6tZ/Gh7reoJq4TcOjLwWle0KbcdQw8hHg
 ZbeZw4QKvtKmcCZ9G6+fXyHGXZvzX56Y/AhX67nzCFMWMejeI8GOAmW/ohprdITdxoFu
 35mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711633042; x=1712237842;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vhptj9/Vq4Rm0PoGzxaGiCJqIgDUZwkAbXDvc9ksjDI=;
 b=lUxZ4CS/JNdIUDSDpIrYu3ExiV1DsDuZFLwfLYM0k8w9AjT3i3CfNDZ2BYdig18ni6
 euE3IIHykn56sFnn6POwd0j/TkqJt4NTQO5j+iQlDnwXjFGCVKldXO07AxPJ41KdAwCL
 ZuzhYVCcUarMzH5aCeylgupnJtSZhDLspG2Km9WyyWbDt+uxXB/pzqVnImc25s7ipl2p
 HhaPbvkCgcFMwlYLTrKDEKNLMvfZl/5vw/jYbIYx6iJvR32h+VhHpGLYP9niPRyHcYSb
 3F4JPtReuyXtKIoJDeEHQRpJ/TfzNBwcl8hbBVvmXmZBLVqcRgycQ0/cBMPc8HZtfnp0
 L9xA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXz5ZgHtH6woXolSOn7r/UPYJOpm6EIXgVE/TbuiIR3DwoqDcqRDRYvN4ImrcUKj+qBoPN5Km8VkARSr+/vNfBoAYe6RRFFEu2tYSju8PXk0IHVHD2trrwL
X-Gm-Message-State: AOJu0YxoOjle47zQuv88JpksFRtR9o7X7LavlqAB2b/t6hC+ByaT0lFy
 mJYu7Gc7cB2Ws6M/uL+dTdUseh+P9G4LDvGI36xl0yQ1bUHOw1r9QnOF0IFcv2vvKqAHbhQjBer
 jEJ+5QiZMtGl8QuqYaWBb1xdZhNtrsjaxtsMF3w==
X-Google-Smtp-Source: AGHT+IGjGHEbsk10nKTaVGgOOQzkHc5Qm9STf87bHGVpMP0DEmjO9lKjEWUgvRJ23UvcJC23rRkiymMtwiTmbVMLRs0=
X-Received: by 2002:a25:b9ca:0:b0:dd1:3cc1:5352 with SMTP id
 y10-20020a25b9ca000000b00dd13cc15352mr2820459ybj.15.1711633040798; Thu, 28
 Mar 2024 06:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
 <CAPDyKFpuKadPQv6+61C2pE4x4FE-DUC5W6WCCPu9Nb2DnDB56g@mail.gmail.com>
In-Reply-To: <CAPDyKFpuKadPQv6+61C2pE4x4FE-DUC5W6WCCPu9Nb2DnDB56g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Mar 2024 14:37:09 +0100
Message-ID: <CACRpkdZ7wAbtTUmmLCef7KnATmfZeAL26Q-gLqnGe3CdZ3+O3A@mail.gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 28, 2024 at 1:54 PM Ulf Hansson <ulf.hansson@linaro.org>
    wrote: > At this point we have suggested to drivers to switch to use threaded
    > irq handlers (and regular work queues if needed too). That said, > what's
    the benefit of using the BH work queue? 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.181 listed in wl.mailspike.net]
X-Headers-End: 1rppwd-0004BF-B8
Subject: Re: [Openipmi-developer] [PATCH 9/9] mmc: Convert from tasklet to
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
Cc: imx@lists.linux.dev, linux-hyperv@vger.kernel.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com, Frank.Li@nxp.com,
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

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgMTo1NOKAr1BNIFVsZiBIYW5zc29uIDx1bGYuaGFuc3Nv
bkBsaW5hcm8ub3JnPiB3cm90ZToKCj4gQXQgdGhpcyBwb2ludCB3ZSBoYXZlIHN1Z2dlc3RlZCB0
byBkcml2ZXJzIHRvIHN3aXRjaCB0byB1c2UgdGhyZWFkZWQKPiBpcnEgaGFuZGxlcnMgKGFuZCBy
ZWd1bGFyIHdvcmsgcXVldWVzIGlmIG5lZWRlZCB0b28pLiBUaGF0IHNhaWQsCj4gd2hhdCdzIHRo
ZSBiZW5lZml0IG9mIHVzaW5nIHRoZSBCSCB3b3JrIHF1ZXVlPwoKQ29udGV4dDoKaHR0cHM6Ly9s
d24ubmV0L0FydGljbGVzLzk2MDA0MS8KIlRhc2tsZXRzLCBpbiBwYXJ0aWN1bGFyLCByZW1haW4g
YmVjYXVzZSB0aGV5IG9mZmVyIGxvd2VyIGxhdGVuY3kgdGhhbgp3b3JrcXVldWVzIHdoaWNoLCBz
aW5jZSB0aGV5IG11c3QgZ28gdGhyb3VnaCB0aGUgQ1BVIHNjaGVkdWxlciwKY2FuIHRha2UgbG9u
Z2VyIHRvIGV4ZWN1dGUgYSBkZWZlcnJlZC13b3JrIGl0ZW0uIgoKVGhlIEJIIFdRIGlzIGNvbnRy
b2xsZWQgYnkgYSBzb2Z0d2FyZSBJUlEgYW5kIHF1aWNrZXIgdGhhbiBhbgpvcmRpbmFyeSB3b3Jr
IGl0ZW0uCgpJIGRvbid0IGtub3cgaWYgdGhpcyBsaXR0bGUgbGF0ZW5jeSBjb3VsZCBhY3R1YWxs
eSBhZmZlY3QgYW55IE1NQwpkZXZpY2UsIEkgZG91YnQgaXQuCgpUaGUgb3RoZXIgYmVuZWZpdCBJ
SVVDIGlzIHRoYXQgaXQgaXMgZWFzeSB0byBtZWNoYW5pY2FsbHkgcmV3cml0ZSB0YXNrbGV0cwp0
byBCSCB3b3JrcXVldWVzIGFuZCBiZSBzdXJlIHRoYXQgaXQgaXMgYXMgZmFzdCBhcyB0aGUgdGFz
a2xldCwgaWYgeW91IHdhbnQKdG8gc3dpdGNoIHRvIHRocmVhZGVkIElSUSBoYW5kbGVycyBvciBw
cm9wZXIgd29yaywgeW91IG5lZWQgdG8gd3JpdGUgYQpsb3Qgb2YgZWxhYm9yYXRlIGNvZGUgYW5k
IHRlc3QgaXQgKHByZWZlcmFibHkgb24gcmVhbCBoYXJkd2FyZSkuCgpZb3VycywKTGludXMgV2Fs
bGVpagoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9w
ZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIK
