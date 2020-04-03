Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 950F319CF03
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Apr 2020 06:06:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jKDbc-0004dg-DY; Fri, 03 Apr 2020 04:06:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1jKDbS-0004cC-Kw
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 04:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P0i5a44/PsPVXizK2loCZDTGox+XOyW9+9DooRb9EMI=; b=hGZv11nYCAf04ulI+73VK+F3pW
 PzcpGo0yE5ZSt1x7eOj4ad0QuERU0wLPvcdm4MLki3okqOZYbRwpbvfvXbKDc06pl4oA9LlnVwTHg
 +vn013gOSaAf/BvD2Sr07D8f/U1gWXLJBnBtpLP4EMQN6MobG1t1/KtSDF/Oh+8XUE2o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P0i5a44/PsPVXizK2loCZDTGox+XOyW9+9DooRb9EMI=; b=Umhva+MXPdBGU4aN2AK2BtIzgy
 uCR6szk2jTNY0mZ85AJNFnm1xDly2GqDmQUQa5Kn5rsVmrp9Ly6EmuzqXSRcHUcNS0P5BylB/MlEV
 UMO4gE/loFBoVpcPySeqi7PRVzfAzAUbCQ5geYkUTLDind2q02EulVedHX2/IzZeGCp4=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jKDbO-00HV6a-Qq
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 04:06:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D3E795802F5;
 Thu,  2 Apr 2020 23:50:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 02 Apr 2020 23:50:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=P0i5a44/PsPVXizK2loCZDTGox+XOyW
 9+9DooRb9EMI=; b=xCpnIFv0cZaUC0AT3DOLbflHBL9J8ZgbLYc5wbe/jrK9xf0
 2DrW2l0EHIfkNsyHA1GvpB7OtMjoRjcPThiu1r4wTCJJOnrfJyZPiFq4Dg3AJ6wf
 a85rCFiUQkwyYiwQOtCWvxoHxzKiqttkGod6I0yWN/TioFl+i1V7Hj5IQTYCwbQC
 znkD6kxL2gP/y+MCtrePHGlpybz2YLv9gsZyE7LY9Op1vYXzEstBJtZ4vRbOeaZF
 vTx+w1purQ9LiCNNN1fxdjz2t3ZXhaUKs/FwwOl8bY3vHTrntt2MYrpNxcxZxRzz
 UVhqrJO6Uhqo3L0+MijmP3fdZAPUbPcAaf8l0ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=P0i5a4
 4/PsPVXizK2loCZDTGox+XOyW9+9DooRb9EMI=; b=spNmuEnPJL8Uu297qnnHKy
 rVOe2vFT6f/6b+xH026WDSohpHZdg8xnj9yghCLCKM/rgNrP0qcKPPvuEq3bz91c
 IkLsmP8xu1bPI2TfqfgUQUOHRQU3C9Lb1ukkQhXGAbCYh6bizNqEYrv9khjRe5wZ
 VpxfvrnYKrJYAH1X5aeawv1fijcB0QqbTnJEBIL2i8j7OWw2zsRljAEOfL4ISZ0p
 wo3BZ2RoeP9T46XJgve+IcLR4rEpIH8oPKxmdTjQEhUxhzf62WB+8z9+VUlPdAHR
 Li/tpyMFcYScbN0Byx2BjzYEvBksqSffm8w1fyHumWEm/LlV/MOVHc601cm5UMag
 ==
X-ME-Sender: <xms:abKGXrawh2OniH8S0iCs40jn3tE3MLaWUO1O7DzwPZMwVHiZwOiUmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdehgdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvghsrdhpihhnghenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiug
 drrghu
X-ME-Proxy: <xmx:abKGXvlPkC1DxluARvIz4GaXXaHhMdSSm3xWLd9ypVAGbxaeaS2-Sw>
 <xmx:abKGXu3Aj5bepyhous-L-NVYVZy5zOZEmFcgFo4Z9CiCwBm8fmqjmg>
 <xmx:abKGXn1jySVFIH3-waYbwYInoEN1TIXY0UmbLkxz2p-O6vvw7YFerA>
 <xmx:cLKGXryKVaezoVOQ2k_ilBFTF_ZS0jkbQmrbG0_MwuNVc1LC4v28CQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AFA09E00B0; Thu,  2 Apr 2020 23:50:01 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1082-g13d7805-fmstable-20200403v1
Mime-Version: 1.0
Message-Id: <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
In-Reply-To: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
Date: Fri, 03 Apr 2020 14:20:21 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jKDbO-00HV6a-Qq
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v2_0/3=5D_ipmi=3A_kcs-bm?=
 =?utf-8?q?c=3A_Rework_bindings_to_clean_up_DT_warnings?=
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> Hello,
> 
> This is a short series reworking the devicetree binding and driver for the
> ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> changes enable removal of more than 100 lines of warning output from dtc.
> 
> v1 can be found here:
> 
> https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> 
> v2 cleans up the commit message of 2/3 and changes the name of the property
> governing the LPC IO address for the KCS devices.

Ping?


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
