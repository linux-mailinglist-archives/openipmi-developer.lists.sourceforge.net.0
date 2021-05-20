Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B99389E4E
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 08:52:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljcXT-0005rI-4n; Thu, 20 May 2021 06:52:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1ljcXR-0005rA-Ep
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 06:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zDP1gHyDrszLLnytgrAGtVNqgUC22fEHUxnVJ2tMd80=; b=OODBS7QBfT+axAadiu5Qw9i/M7
 IVRme8++6QurFH+fZX77ZANx7VM9c8AZyglw5a+aI3MYxQhfIvZ3+Xp48zY3zVPfNFtIY+LjJ/fXw
 T3d3+51rJobuiHh1Z1QDPKLnanUgUNAyiAwExBwmNeUJjE+MlecECVt2bPHogUxKQrx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zDP1gHyDrszLLnytgrAGtVNqgUC22fEHUxnVJ2tMd80=; b=EKmLlcBkRMKODQ7e7uzgsGNtvx
 /4ESLNQIsg5IsOjz/pd4b+i5ZJTrndaYFY1FzfxnSjub2av5H9Wa9+F3Jy8KOiM4Q1a0coxTp3a1i
 ZUuNIpRhrat0Dz08mbePuny8s01gjvoNcCXhp9K2T7RsE83SDAcHt7l3bJ5hEax+SDm4=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ljcXI-00G8rp-P4
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 06:52:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A3D105806A2;
 Thu, 20 May 2021 02:51:52 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 20 May 2021 02:51:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=zDP1gHyDrszLLnytgrAGtVNqgUC22fE
 HUxnVJ2tMd80=; b=fKKhcjnhxfcH7inJWHHa3A0cIBqtVrGLLK8jvG+xfQwIGzm
 bGWCJ44WwNzxCF8LGPZUi65ZCXMXngS1vsTDxRdzfol8lD1dHuEgpGgLFUv9et3w
 OJ3SvDac4cFKl1d7U4KAW2HknDt9WnjR5lilUFmxt7UivlHmLCBNVRQ0rFBG7VIe
 MPr81VVcR/4DXrgGz2OxplRAzjFOAF7sk4Mxuyq2BW9MNTqMXg8E4Tr5s9Hh4K+I
 fhKGLqpgj3uPGGyuTpf+qRwBXHoFPH+p5EEwPLW4xD7Um5nvemR5/YNTyXBK4HZ6
 vOopsIqr5AfTTY+Z7OWeQGGotHKC657w6JynXNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zDP1gH
 yDrszLLnytgrAGtVNqgUC22fEHUxnVJ2tMd80=; b=nAwBxIw/gsRIXpTw1UBOVP
 2Qq3iNRZx42+ZO6l/9j8pz7ZpUVp5GbYOpu37WNhVzijYTZEBDErWpvzF08KJUGI
 bvojQ4a3ccg4GMH8ZquVURmoeKaswm8PjRsRN1dXLtZTbplRLB2op9ouPYF/gpvt
 4q70LvH15smlxFOg5nsaRnwygHe0wnCyUY90s5uQcxTpTqCEdN7dbyGmAviBClId
 wSw9kirQU4DPrXwLnCQB52FfIKIX4IxhctXuTiuS+iQRTabR6Sb3BIRoPSUQQK8d
 pi8vxz33I3vi+0mQYJ1NJznWJ9Dx/ZWKVGxJCG6xdTZ/VNBv708Cp3OAizS5Ux2w
 ==
X-ME-Sender: <xms:BwemYIWE9ShKCRcIHlIT8n11f3DDJKr76ap4kBC_n_PjMwlNNa1ckw>
 <xme:BwemYMkGK86YIf_wNEDeQijxAtKrFcWPwOXq3WkMNCTMQZwITAPU5uPXQhBY8Z5eC
 kUIVLUcLkm0bETAjg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejtddguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtf
 frrghtthgvrhhnpeduffdtvdevkeffgfetffffueevgeejleeghfffjedthedthfelgfek
 fefhfeekieenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgr
 uh
X-ME-Proxy: <xmx:BwemYMbRFvfVszlZL3_K6ezre0UAozJvK9U_t6x18uxp2Um6fFn-Rw>
 <xmx:BwemYHWhmhBEUTF23J-0nzWeWbqJ7TUsu4J-RskfyAbMEDbetvyFog>
 <xmx:BwemYCmhBYnhkVznydHBegbLzOyq4s3YjENph1GV2_dPWNluMg04Ng>
 <xmx:CAemYIneiAhMNiKkCrRH-Gg0uc6EV9XAMtfTjAEQ68MxtKZH8ggN0Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9E230A004B5; Thu, 20 May 2021 02:51:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <5b549fee-63b1-4c05-a1d6-f6a13e235e1e@www.fastmail.com>
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
Date: Thu, 20 May 2021 16:21:31 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.230 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljcXI-00G8rp-P4
Subject: Re: [Openipmi-developer] [PATCH v3 00/16] ipmi: Allow raw access to
 KCS devices
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
Cc: devicetree@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Zev Weiss <zweiss@equinix.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Mon, 10 May 2021, at 15:11, Andrew Jeffery wrote:
> Hello,
> 
> This is the 3rd spin of the series refactoring the keyboard-controller-style
> device drivers in the IPMI subsystem.
> 
> v2 can be found (in two parts because yay patch workflow mistakes) at:
> 
> Cover letter:
> https://lore.kernel.org/linux-arm-kernel/20210319061952.145040-1-andrew@aj.id.au/
> 
> Patches:
> https://lore.kernel.org/linux-arm-kernel/20210319062752.145730-1-andrew@aj.id.au/
> 
> Several significant changes in v3:
> 
> 1. The series is rebased onto v5.13-rc1
> 
> 2. v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
>    so they're no-longer required in the series.
> 
> 3. After some discussion with Arnd[1] and investigating the serio subsystem,
>    I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
>    (patch 11/16 in this series). The adaptor allows us to take advantage of the
>    existing chardevs provided by serio.
> 
> [1] 
> https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/
> 
> Finally, I've also addressed Zev Weiss' review comments where I thought it was
> required. These comments covered a lot of minor issues across (almost) all the
> patches, so it's best to review from a clean slate rather than attempt to review
> the differences between spins.

I backported this series for OpenBMC and posting those patches provoked
some feedback:

* A bug identified in patch 9/18 for the Nuvoton driver where we enable
  the OBE interrupt:

https://lore.kernel.org/openbmc/HK2PR03MB4371F006185ADBBF812A5892AE509@HK2PR03MB4371.apcprd03.prod.outlook.com/

* A discussion on patch 10/18 about lifting the single-open constraint

https://lore.kernel.org/openbmc/CAPnigKku-EjOnV9gsmnXzH=XZxSU78iLeccNbsK8k2_4b4UwSg@mail.gmail.com/

I need to do a v4 to fix the bug in the Nuvoton driver. Did you have any
feedback for the remaining patches or thoughts on the discussions linked
above?  I'd like to incorporate whatever I can into the series before
respinning.

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
