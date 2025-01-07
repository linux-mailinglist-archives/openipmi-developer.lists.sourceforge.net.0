Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4D8A04CB4
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Jan 2025 23:54:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVITF-0005Dm-Rn;
	Tue, 07 Jan 2025 22:54:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tVITF-0005Db-8E
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 22:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Message-Id:References:In-Reply-To:To:Cc:
 From:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLc1xPAL0AFFKPRpUd/UVHpL4aDbiIngxyJwJEuzDb8=; b=SbYEnjkI9ZBSVy468+276ImNGl
 rqq2y7VcIxUF08CIZtPx6tDmAdjBdw38fDRrOfiLd+DnWBQYlsaFg2x8LR5bhB9tYMJYU6DypsZez
 vHRso6l1zlUzqjXmCthqHAgLDX3TlzznQuPfQ6S6JoME/48lp0b6roplNPUz5nIFqonM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Message-Id:References:In-Reply-To:To:Cc:From:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLc1xPAL0AFFKPRpUd/UVHpL4aDbiIngxyJwJEuzDb8=; b=aT7jeoD/2jWoS57eohr/IZLQ01
 +6ZbU47/LVG2Z8Y+k28xA4BVPZlZpPpQFr7oyneaA7KAoaMGiDtBzXkx/hOSf0Snt8h4+iFrCrGcr
 P/d2q6vBSAYVHb9nplAGInOS4qWVF+Y+MAI6ZXEzTfm0/J7W0EC40Cpp4FTie6Tvsqog=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVITE-0004Ii-Jm for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 22:54:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 04F595C62E1;
 Tue,  7 Jan 2025 22:53:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98A7DC4CEE8;
 Tue,  7 Jan 2025 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736290473;
 bh=dYbF7CHxuuCz2p1jW22Ix5UW0UmrzVjjqtNsyO8jekA=;
 h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
 b=LJf7DYF3n6cj3pBXooqWfWIUfMxkpq+W8jkF9sAjxC7pNSYms7tQbAQ9ZcS6HULtp
 0zn6w2Tc9E71TTX19KpDZYeTBMbyqAiqX2S2Hu2uRHXmrV9YkPRDjDDNT/YZ1iRyd4
 RLWfGOKVsiMoPJvQRWNbHSvi/WyUkvIUR0W9UWq+Ssg6rulAXGwW9oOaNlIbp5xbVs
 GIdvbuuIr+Us+G0Q9045WfDhoZpZSlHpNytlG/in7WZGCnMGerIXzvaP7nnHXaiF48
 NZgt0JQEE54lkJtYijy4F9cjWTwzJLBpQqXxWrX4oRw5Vn2gv8MXAoVIprSD0SS09a
 rRKbWZgYVdhpQ==
Date: Tue, 07 Jan 2025 16:54:32 -0600
MIME-Version: 1.0
To: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <20250107162350.1281165-1-ninad@linux.ibm.com>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
Message-Id: <173629037049.1994533.7630339914217766401.robh@kernel.org>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 07 Jan 2025 10:23:37 -0600, Ninad Palsule wrote: >
 Hello, > > Please review the patch set. > > V2: > --- > Fixed CHECK_DTBS
 errors by > - Using generic node names > - Documenting phy-mode rgmi [...]
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tVITE-0004Ii-Jm
Subject: Re: [Openipmi-developer] [PATCH v2 00/10] DTS updates for system1
 BMC
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: minyard@acm.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
 pabeni@redhat.com, ratbert@faraday-tech.com, linux-aspeed@lists.ozlabs.org,
 netdev@vger.kernel.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 krzk+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Tue, 07 Jan 2025 10:23:37 -0600, Ninad Palsule wrote:
> Hello,
> 
> Please review the patch set.
> 
> V2:
> ---
>   Fixed CHECK_DTBS errors by
>     - Using generic node names
>     - Documenting phy-mode rgmii-rxid in ftgmac100.yaml
>     - Adding binding documentation for IPMB device interface
> 
> NINAD PALSULE (7):
>   ARM: dts: aspeed: system1: Add IPMB device
>   ARM: dts: aspeed: system1: Add GPIO line name
>   ARM: dts: aspeed: system1: Add RGMII support
>   ARM: dts: aspeed: system1: Reduce sgpio speed
>   ARM: dts: aspeed: system1: Update LED gpio name
>   ARM: dts: aspeed: system1: Remove VRs max8952
>   ARM: dts: aspeed: system1: Mark GPIO line high/low
> 
> Ninad Palsule (3):
>   dt-bindings: net: faraday,ftgmac100: Add phys mode
>   bindings: ipmi: Add binding for IPMB device intf
>   ARM: dts: aspeed: system1: Disable gpio pull down
> 
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    |  42 +++++
>  .../bindings/net/faraday,ftgmac100.yaml       |   3 +
>  .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 177 ++++++++++++------
>  3 files changed, 163 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> --
> 2.43.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-system1.dtb' for 20250107162350.1281165-1-ninad@linux.ibm.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: gpio@1e780000: 'hog-0', 'hog-1', 'hog-2', 'hog-3' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#







_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
