Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCDCA27FE3
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Feb 2025 01:02:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfSs3-0003JR-Pe;
	Wed, 05 Feb 2025 00:02:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1tfSs3-0003JL-Di
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n9dR3JEhqnb9OApW3VcHCh5n2riOWy7LJANruYsyTtU=; b=Az+rm0YGtmH/AdrOZLM4r+ZEgU
 lUspZMI9Ps2EUv7pz4Odw2GI4lnWuwYKGiUmQadsN5Tkr5jmnSmHLBbDD7M6SdDcxJSKRVenO7arL
 PCpqifUB5fAJLBxLB7cHVHeiDU/J+ml6b6n7CxDzgZZ2o2fTC8FpTeI5cw9vNFFngvsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n9dR3JEhqnb9OApW3VcHCh5n2riOWy7LJANruYsyTtU=; b=VRnC87oRC/XOWu2abVvtwl+dRl
 DDzK56k3VLdPtPaXmE5f6Gnml57a93Q8gd3wU4xq+cryDpP8U87eiM0Trf8Dui7su8bDVvs42qGoL
 1P16O6ytqFWuSUWNoMmcSJPMPWsJwOxbVeII2UjrOyaRRX+xXbw9931AAa4SBNGB3vHg=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfSs3-0005QN-Aq for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1738713736;
 bh=n9dR3JEhqnb9OApW3VcHCh5n2riOWy7LJANruYsyTtU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=Ck3e/lCEXFFuuoAL69bUJWIek/Bsj52kXXFN9+Kl+6EcYVipvo8ygxrtNA4uMA1rt
 t8UHG4JeGtRi/K1MhrhztJoZrDC6WPv9ESbvBEmNQ8sDfoqES0Q8Dxr7DSXZaCBG7G
 FsyjTczGpcz21wcVTOqimjz4E+oHG6J5ABSwcd5nm6vx9P3rhr+I7F5ee6nNxnEnhv
 z9AOwwanF4AZO/zfrRJwdBAtop2B8lrKQ394MTiFEPsrMHRBCh/a84XlYfYJhvWiW7
 a9/g7PIXNWyWs8tHO/8KTFCI8uh3UXtHQ6dmZyKxzL7IUvqP6jfd3tt7ZgBam590Ec
 y2AaxNBlxyPIQ==
Received: from [192.168.68.112]
 (ppp118-210-185-209.adl-adc-lon-bras34.tpg.internode.on.net
 [118.210.185.209])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A112C7104E;
 Wed,  5 Feb 2025 08:02:15 +0800 (AWST)
Message-ID: <114b92f993a1b5e2c77bbc91b42c21817af2874f.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Ninad Palsule <ninad@linux.ibm.com>, brgl@bgdev.pl, 
 linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org,  conor+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au, 
 devicetree@vger.kernel.org, eajames@linux.ibm.com, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Date: Wed, 05 Feb 2025 10:32:15 +1030
In-Reply-To: <20250204194115.3899174-3-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
 <20250204194115.3899174-3-ninad@linux.ibm.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Bartosz, On Tue, 2025-02-04 at 13:41 -0600, Ninad
 Palsule wrote: > Allow parsing GPIO controller children nodes with GPIO hogs.
 > > Reviewed-by: Rob Herring (Arm) <robh@kernel.org> > Signed-off-by: Ninad
 Palsu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tfSs3-0005QN-Aq
Subject: Re: [Openipmi-developer] [PATCH v9 2/9] dt-bindings: gpio:
 ast2400-gpio: Add hogs parsing
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
Cc: andrew@lunn.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgTGludXMsIEJhcnRvc3osCgpPbiBUdWUsIDIwMjUtMDItMDQgYXQgMTM6NDEgLTA2MDAsIE5p
bmFkIFBhbHN1bGUgd3JvdGU6Cj4gQWxsb3cgcGFyc2luZyBHUElPIGNvbnRyb2xsZXIgY2hpbGRy
ZW4gbm9kZXMgd2l0aCBHUElPIGhvZ3MuCj4gCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChB
cm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTmluYWQgUGFsc3VsZSA8bmlu
YWRAbGludXguaWJtLmNvbT4KPiAtLS0KPiDCoC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8v
YXNwZWVkLGFzdDI0MDAtZ3Bpby55YW1swqDCoMKgwqDCoMKgIHwgNgo+ICsrKysrKwo+IMKgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKV291bGQgeW91IGxpa2UgdG8gdGFrZSB0aGlz
IHRocm91Z2ggdGhlIEdQSU8gdHJlZT8gT3RoZXJ3aXNlIEknbSBoYXBweQp0byB0YWtlIGl0IHRo
cm91Z2ggdGhlIEJNQyB0cmVlIHdpdGggeW91ciBhY2suCgpBbmRyZXcKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
