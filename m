Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F1DA0F576
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2025 01:07:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXUT4-0004xE-5X;
	Tue, 14 Jan 2025 00:07:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tXUT2-0004x8-O1
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 00:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=69NwRHPDpUPhrQVlnwmwVJ/LoaQPQWrcqlUlf4HPYdY=; b=eDEPS7fO+ZmAn6d/9qUjhV7k7R
 W+5ZJgQASPcCzfOQ++lozRyZ0HPJNBIJfimh7yZz9CUaWaHVcYPJOLAT+rBFzY49xkGpnnoW5TeA9
 1suBrCU4ROMeHxzrPuMvepT7VZg2JEW80ClPA6KnwbtCqGpQ6Nvb5WEoSEULdt/D8sJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=69NwRHPDpUPhrQVlnwmwVJ/LoaQPQWrcqlUlf4HPYdY=; b=SQb2p4O0DeuPuHwaUlVbrdxkIN
 SO3wELTna6z1vYirSyrWEgyyaiOkM2Adj6DSzPMr3uDK/4Xp6hFxKHczWA+BhXdk/nkuPNDlGGoEo
 W/yJSPQ8dgFBEKblEJvh7Ps9DOb0wz1D2F34ezUxb3t+7iehvyRsRu3VzUnvHEtGYTNk=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXUT1-00051q-8i for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 00:07:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 235C3A40883;
 Tue, 14 Jan 2025 00:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC8A6C4CED6;
 Tue, 14 Jan 2025 00:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736813249;
 bh=YFHHVZRBvQPdmgWH/zLMVMHmLYNVEI8tzbQwTlW2Ih0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gOTFj0wRO1DfGUp6+VPCpqUafTsi7L81Xr/N1PyvWv1a0wb1I4O86uruKRYFwp/yb
 igPuym1uXdVCyaO46OsTWZUuJAeWGwjtlxxC8TFV3UYQ7vSkFlpWbKNa+ttNjOZmS8
 DqED6du4VBtXZGo24cMncrjO+hPNftFqjQ2ivI/4lO/jbzA89ZglO+T2AL/lgVeyl+
 ri9/TJeJp7GMU4FOlVQfq5iRNAJHTgDVY59qI3DaMhQXZ6DWnW+B3v2AiqX+EF7MvC
 xzTniRwae/Ojf+PxOth+YwBTUMArkHFSH4ZpuPDAh+QcNg4CK4BoHzKC4ZKB/x+ki5
 M53UnNGvTfAmQ==
Date: Mon, 13 Jan 2025 18:07:27 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <20250114000727.GA3693942-robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <173637565834.1164228.2385240280664730132.robh@kernel.org>
 <a8893ef1-251d-447c-b42f-8f1ebc9623bb@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8893ef1-251d-447c-b42f-8f1ebc9623bb@linux.ibm.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 13, 2025 at 01:52:01PM -0600,
 Ninad Palsule wrote:
 > Hello, > > On 1/8/25 16:34, Rob Herring (Arm) wrote: > > On Wed, 08 Jan
 2025 10:36:28 -0600, Ninad Palsule wrote: > > > Hello, > > > > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tXUT1-00051q-8i
Subject: Re: [Openipmi-developer] [PATCH v3 00/10] DTS updates for system1
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: minyard@acm.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
 pabeni@redhat.com, ratbert@faraday-tech.com, linux-aspeed@lists.ozlabs.org,
 netdev@vger.kernel.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, krzk+dt@kernel.org,
 kuba@kernel.org, openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jan 13, 2025 at 01:52:01PM -0600, Ninad Palsule wrote:
> Hello,
> 
> On 1/8/25 16:34, Rob Herring (Arm) wrote:
> > On Wed, 08 Jan 2025 10:36:28 -0600, Ninad Palsule wrote:
> > > Hello,
> > > 
> > > Please review the patch set.
> > > 
> > > V3:
> > > ---
> > >    - Fixed dt_binding_check warnings in ipmb-dev.yaml
> > >    - Updated title and description in ipmb-dev.yaml file.
> > >    - Updated i2c-protocol description in ipmb-dev.yaml file.
> > > 
> > > V2:
> > > ---
> > >    Fixed CHECK_DTBS errors by
> > >      - Using generic node names
> > >      - Documenting phy-mode rgmii-rxid in ftgmac100.yaml
> > >      - Adding binding documentation for IPMB device interface
> > > 
> > > NINAD PALSULE (7):
> > >    ARM: dts: aspeed: system1: Add IPMB device
> > >    ARM: dts: aspeed: system1: Add GPIO line name
> > >    ARM: dts: aspeed: system1: Add RGMII support
> > >    ARM: dts: aspeed: system1: Reduce sgpio speed
> > >    ARM: dts: aspeed: system1: Update LED gpio name
> > >    ARM: dts: aspeed: system1: Remove VRs max8952
> > >    ARM: dts: aspeed: system1: Mark GPIO line high/low
> > > 
> > > Ninad Palsule (3):
> > >    dt-bindings: net: faraday,ftgmac100: Add phys mode
> > >    bindings: ipmi: Add binding for IPMB device intf
> > >    ARM: dts: aspeed: system1: Disable gpio pull down
> > > 
> > >   .../devicetree/bindings/ipmi/ipmb-dev.yaml    |  44 +++++
> > >   .../bindings/net/faraday,ftgmac100.yaml       |   3 +
> > >   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 177 ++++++++++++------
> > >   3 files changed, 165 insertions(+), 59 deletions(-)
> > >   create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > > 
> > > --
> > > 2.43.0
> > > 
> > > 
> > > 
> > 
> > My bot found new DTB warnings on the .dts files added or changed in this
> > series.
> > 
> > Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> > are fixed by another series. Ultimately, it is up to the platform
> > maintainer whether these warnings are acceptable or not. No need to reply
> > unless the platform maintainer has comments.
> > 
> > If you already ran DT checks and didn't see these error(s), then
> > make sure dt-schema is up to date:
> > 
> >    pip3 install dtschema --upgrade
> > 
> > 
> > New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-system1.dtb' for 20250108163640.1374680-1-ninad@linux.ibm.com:
> > 
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: gpio@1e780000: 'hog-0', 'hog-1', 'hog-2', 'hog-3' do not match any of the regexes: 'pinctrl-[0-9]+'
> > 	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
> 
> This is a false positive. So ignoring it.

No, it is not. You need to define hog nodes in aspeed,ast2400-gpio.yaml. 
See other GPIO controller bindings that do this.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
