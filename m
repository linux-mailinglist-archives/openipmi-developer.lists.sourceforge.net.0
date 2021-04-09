Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C4E3594A1
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 07:34:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUjmT-000391-84; Fri, 09 Apr 2021 05:34:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lUjmR-00038N-Av
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:34:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KsZEWbeiMrRF/Lxcx0y3lXRjdkXfUpTzDsTGr+HZU4=; b=ITX4L/CE17TjJ86lkc+dA5FgQH
 BknFK4GPdMyVPkCklvePW9uJOqCQSH0/MS4kGND6mn2X2sRh7MauvOVbYllnR1LcmPMlSwsry9aWZ
 ex+4qaoB3KiBfNiMAmZiqXKMXY0//53Qcx8izPxT2oZGv6N5gkff2QwDAyRnOaz5e78k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KsZEWbeiMrRF/Lxcx0y3lXRjdkXfUpTzDsTGr+HZU4=; b=BF0dEHV42FAxldlLYchK4JsOgL
 WxXEOO7V7CQmawFei3YUqxaBCVFwBzKOKdBnR5SKgqSUpCuIBLqaCJkMB04v4ltpDOUVvohWNJjvS
 +2SIe+VZdE/rrb+xt5s5CPIqjsqpdt0haNc+YrnwpVNvCG5IuM8wNlAZjETTX9TxqyWE=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUjm0-008YBV-Ua
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:34:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D2E5C5803EA;
 Fri,  9 Apr 2021 01:33:32 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Fri, 09 Apr 2021 01:33:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=6KsZEWbeiMrRF/Lxcx0y3lXRjdkXfUp
 TzDsTGr+HZU4=; b=s7aTIHdPkWUUh50pfSfs9YrIamJKh1LwCTdl5ksQMzQC06W
 EUdsfUV/ewk95//Jv4HuOkMH6DKQwTdKfwt43N2rRyyv/otaXCgjqriNAjr0oZU/
 luVeRv3frbUuwUACxK1JGYFu7MH0kGfn99b8lBJ5UQvMeOW0FaYpbGtRLf35teSt
 zEI4749bzFfvojnrKsZ6D/nzmfZWT9gP8dWOl7kHFELvpR38/e4O+3UQn2QPt3dW
 bR3r0+b3vzmlNqXNmD5E8Mh+r+n4oZ+9zI7H5do98CqAw93mTh1vM2/GxkmTBp5e
 sIA+VoXzUfbjG6f7IARyCiIvIC3+Yns+Ou0X8og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6KsZEW
 beiMrRF/Lxcx0y3lXRjdkXfUpTzDsTGr+HZU4=; b=vVjXPiJfvj7jy5w9gnua2w
 +cwGpZ82luDiAgmBszB9Z3ZlWAHaqeaIBMUjrXI9EMcSomQHDqw0vddA7kHlYB98
 6qMjW+jm0ZTMInHw/5uKOkrJcUs58Dt27z2YlBx4sXyvLuy3UcfTK5AiNvd+V5C3
 tBfc9/KnJEzRQa+sTJwqMvCjkU8b6JZVCqlwTDLHQUYKQ8Wpv73dg7NyG9dqWHfs
 ubziUCqQmYrLh5hIXH7LJeOesWu6c2agu8lY3ZHcJpIOuavtym9pkt+kuDMlGtGE
 1kOiadKVlYQGAxon/QHJ0ztKjTqy6yHJOA9i+LUbzPCrT5659Q2gCW+U0jLtBHnw
 ==
X-ME-Sender: <xms:K-dvYMWCw-GkUejkBXVxANm1D1ra_d_841lfbxXom5vnlQx9jHlSqQ>
 <xme:K-dvYAnITXOpW2LILhj2vnv0Ib0SG9IUMHl8E3_3Y6FXZF8tPz3feM1SaqU9NMxi7
 mPaHYMIhWihugK7hw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudektddgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefguedvfedvgffgudehjeegudefvedufefgveefudetffdvfeeigffg
 jedvkeetnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvg
 hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghu
X-ME-Proxy: <xmx:K-dvYAaagiduEK58TzVobAp1l4DaeIotxjjLKfobRejgiw3ukhaVlQ>
 <xmx:K-dvYLVkaJ8gOLQMa4vRVpks2YCgFrQuBlUUVVgeK6aPOQjdjDkx6Q>
 <xmx:K-dvYGlDDbOalalze6k3F3zSnWA2ULCrF0DWmztLDoCJxxZ1m5Yk2g>
 <xmx:LOdvYA0u63MbxX8FXcxHeKOEZtskhce-Zm-LuDsJ4Tk9Cw8ujUDE8A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CC383A0007C; Fri,  9 Apr 2021 01:33:31 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <29937129-3a17-4a32-a723-191b693a1e0c@www.fastmail.com>
In-Reply-To: <YG/i9lSxxCMIzkRs@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-17-andrew@aj.id.au> <YG/i9lSxxCMIzkRs@packtop>
Date: Fri, 09 Apr 2021 15:03:10 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: devicetree.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUjm0-008YBV-Ua
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v2_17/21=5D_dt-bindings?=
 =?utf-8?q?=3A_ipmi=3A_Convert_ASPEED_KCS_binding_to_schema?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 9 Apr 2021, at 14:45, Zev Weiss wrote:
> On Fri, Mar 19, 2021 at 01:27:48AM CDT, Andrew Jeffery wrote:
> >Given the deprecated binding, improve the ability to detect issues in
> >the platform devicetrees. Further, a subsequent patch will introduce a
> >new interrupts property for specifying SerIRQ behaviour, so convert
> >before we do any further additions.
> >
> >Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >---
> > .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 92 +++++++++++++++++++
> > .../bindings/ipmi/aspeed-kcs-bmc.txt          | 33 -------
> > 2 files changed, 92 insertions(+), 33 deletions(-)
> > create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> >
> >diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> >new file mode 100644
> >index 000000000000..697ca575454f
> >--- /dev/null
> >+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> >@@ -0,0 +1,92 @@
> >+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >+%YAML 1.2
> >+---
> >+$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml
> >+$schema: http://devicetree.org/meta-schemas/core.yaml
> >+
> >+title: ASPEED BMC KCS Devices
> >+
> >+maintainers:
> >+  - Andrew Jeffery <andrew@aj.id.au>
> >+
> >+description: |
> >+  The Aspeed BMC SoCs typically use the Keyboard-Controller-Style (KCS)
> >+  interfaces on the LPC bus for in-band IPMI communication with their host.
> >+
> >+properties:
> >+  compatible:
> >+    oneOf:
> >+      - description: Channel ID derived from reg
> >+        items:
> >+          enum:
> >+            - aspeed,ast2400-kcs-bmc-v2
> >+            - aspeed,ast2500-kcs-bmc-v2
> >+            - aspeed,ast2600-kcs-bmc
> 
> Should this have a "-v2" suffix?

Well, that was kind of a matter of perspective. The 2600 compatible was 
added after we'd done the v2 of the binding for the 2400 and 2500 so it 
never needed correcting. But it is a case of "don't use the deprecated 
properties with the 2600 compatible".

I don't think a change is necessary?

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
