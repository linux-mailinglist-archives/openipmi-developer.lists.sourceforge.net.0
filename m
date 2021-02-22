Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2EF32129D
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Feb 2021 10:05:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lE79u-0004vQ-07; Mon, 22 Feb 2021 09:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1lE79G-0004tl-DY
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 09:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=; b=hfIlM32k0159YvEJ72Hm0NiSJu
 8aRG+qZJJ5FbA/raXQTU3LxhDjIBREx5E9R1cjFGyebcnb2mfXIlVa9kE3maLdsU6eYv+Re1GBuYo
 aVIrJbwe4IoZnyv8wlP9XBZx7J1jXuLpYRTE3kOXI+xhAVLu9LB5qghHP2a5yd/8ju+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=; b=bSdhIDVmQsXnr+KG5cJgPu/zQN
 rpnY02WYBooi3WHBUD+Wh1RrCNGP5gRq+9aDTqQet4vzUp4BomBuKiItVHOyuFXAtaxcZvl4ssseN
 6ueng99Eb7tAKxnv+Ps0N9tyu2yrQQomEecF3htUG3yM6VfG6zIww/pU9wrR2CqhgGRk=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lE796-0004FB-7t
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 09:04:58 +0000
Received: by mail-wr1-f46.google.com with SMTP id t15so18134410wrx.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 22 Feb 2021 01:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=;
 b=yL7TzNgXytnTO6Go+i6klhnStgxH8xwdTDTXSlkHTZW3OM+XGilppMKuTdHTwqL+k7
 6PAJUBv7U86Kxu4+T0MGuOe7BctjORCj2iA8e9BK2rrkx/JsOQ7rhl+IWsO7EwzE5h9Z
 SdsRmTr38GYgbYvNXEmGmMvQwEeI7bPyW8B6irLr3ltRF8FvrZNpacs8KLLAlRmOF6lz
 Qd+bynAs7gR33jdNfKhpfQrnz7C8U+yw+RQ3EA71oM7VwFmv+H3crW17LurcXZnQ69Zh
 bUN6GevDuuY0JYwnQ1pV1pMsk9SPue+arcBYe36VlgItDmpjikMiLxwV3Goy29wbsDa6
 zh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=;
 b=aw2bZVM42LlXmenVkwRcPqfyFD10KB262uTL14UPfrMum58a/w+9nvIYDUtsLldhx4
 wZJFhkglV3xCgktRohPBx7odfLhltoi6jU0y6M2nt0QGN8+uRLatOsDIF3xc9omCI4z4
 fFdOFL4yNWqW38sNdZSChpCsWsTsDYA3s8TcMQRMHlRUn1MnSMs27x6pifhiG22tZT+a
 UqA/j4gbM7GaRCv3toQruxII6Xklo6PbgUoQ6egyV/wLaPSLvidp33ID+j/Qq82rgAYp
 am+0w2jbKEeHEkFvKGgvE+qMWCtB6p06JVCL8K/r9hPU1+ehc9M1XB0/lgh+BJiXwjTT
 HrZw==
X-Gm-Message-State: AOAM532wjAD9PW+zzAM50rGb4vsHloYVhzuYRYU132SupsjHCWWjzyb1
 jZEjvAXGovQw5CxcRbKiuYCCDQ==
X-Google-Smtp-Source: ABdhPJwOHue/t3T/Gsj5IrX0E90nO1og7r9e8V4bXyiNtpeeZqzFVoqABJfZlXM2xJY6LhyUPWUd5w==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr20403648wro.73.1613984681888; 
 Mon, 22 Feb 2021 01:04:41 -0800 (PST)
Received: from dell ([91.110.221.155])
 by smtp.gmail.com with ESMTPSA id u12sm1410725wmq.38.2021.02.22.01.04.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 01:04:41 -0800 (PST)
Date: Mon, 22 Feb 2021 09:04:39 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210222090439.GB376568@dell>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-2-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219142523.3464540-2-andrew@aj.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lE796-0004FB-7t
Subject: Re: [Openipmi-developer] [PATCH 01/19] dt-bindings: aspeed-lpc:
 Remove LPC partitioning
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, tmaimon77@gmail.com, minyard@acm.org,
 linux-gpio@vger.kernel.org, avifishman70@gmail.com, venture@google.com,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, linux-aspeed@lists.ozlabs.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCAyMCBGZWIgMjAyMSwgQW5kcmV3IEplZmZlcnkgd3JvdGU6Cgo+IEZyb206ICJDaGlh
LVdlaSwgV2FuZyIgPGNoaWF3ZWlfd2FuZ0Bhc3BlZWR0ZWNoLmNvbT4KPiAKPiBUaGUgTFBDIGNv
bnRyb2xsZXIgaGFzIG5vIGNvbmNlcHQgb2YgdGhlIEJNQyBhbmQgdGhlIEhvc3QgcGFydGl0aW9u
cy4KPiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBkb2N1bWVudGF0aW9uIGJ5IHJlbW92aW5nIHRoZSBk
ZXNjcmlwdGlvbiBvbiBMUEMKPiBwYXJ0aXRpb25zLiBUaGUgcmVnaXN0ZXIgb2Zmc2V0cyBpbGx1
c3RyYXRlZCBpbiB0aGUgRFRTIG5vZGUgZXhhbXBsZXMKPiBhcmUgYWxzbyBmaXhlZCB0byBhZGFw
dCB0byB0aGUgTFBDIERUUyBjaGFuZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hpYS1XZWkgV2Fu
ZyA8Y2hpYXdlaV93YW5nQGFzcGVlZHRlY2guY29tPgo+IFJldmlld2VkLWJ5OiBBbmRyZXcgSmVm
ZmVyeSA8YW5kcmV3QGFqLmlkLmF1Pgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYXNwZWVkLWxwYy50
eHQgICAgfCAxMDAgKysrKystLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspLCA3NSBkZWxldGlvbnMoLSkKCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2Fs
IExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJs
b2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==
