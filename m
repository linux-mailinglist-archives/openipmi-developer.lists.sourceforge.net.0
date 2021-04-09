Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E3B35947E
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 07:25:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUjdc-0004NX-Nj; Fri, 09 Apr 2021 05:25:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lUjdb-0004NP-Q8
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tsg8t/mJg/l7Xo3qIgT/COuJ+KimOhQl4GFUqpSEKJU=; b=A6g9lIA7LKVpmXTJNqpxEeaWWH
 igLrINfEtwQRCXn/X1MKXpJ7C+t19d9hmIMjUX/viXpHtkOymGZ5kSG1KFGSRPWzrbBrGgalSYcKB
 KnZczPhbJRf5ZfBabw1ovABR7Cid12qsvK1MADAh91HUtw+4+/XV5udVGUwn/S2XGEmM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tsg8t/mJg/l7Xo3qIgT/COuJ+KimOhQl4GFUqpSEKJU=; b=Xz/dc/VLEcm5jiK16I/VEXSo5F
 i3SAU+SVciHt1NHnNkX//FqekKo0nG3rcaLBgPqfxa/teQqHaI/bNizPXBnqt8n85cQf7ZTZbOPul
 DsHafDgvL4W0vo963NJp4sub3MCAiCr/BatZwznBfV9+EHFPAgQR/eleV3PWI+q4TzEk=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUjdH-0003I6-P3
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:24:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A0960580747;
 Fri,  9 Apr 2021 01:24:31 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Fri, 09 Apr 2021 01:24:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Tsg8t/mJg/l7Xo3qIgT/COuJ+KimOhQ
 l4GFUqpSEKJU=; b=aSXk2orPauSq4IpUw+9+U8Q+/ZS2pBnkJOqeVdwgpSBrKH4
 rwavWdTu3RER4VS7ec2GKaKA3VBup6i5FRgceSmosDEpNhR3yKU3Q9k1Z77gwZMq
 fMuDesrezZk0YDWrY7h5n2h24EtV5hXgtSNcriyPmIW5FXNfXAXnKbuKx6E3EmFi
 j4y/y5m2pg4ITm7HkFDTZitQ0YJl3fwHl0fSsGao+U8lB2V3H/G/H9dZj+KD9ImQ
 sV8T6R9FdYPLjzxVsFhD6AFW5Dd6144sISzIv3e7Auyv4KKMTc35BcPjLpP8ZIKo
 9iwvRqIHFtjEXrFzmQjYRp7iSFMEc6i6bP25Dzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Tsg8t/
 mJg/l7Xo3qIgT/COuJ+KimOhQl4GFUqpSEKJU=; b=LLq6rlxZTo+gKhwAqZOsyR
 oCA7427BBoQgCiUa3Vhu8hbEm+n8C8IcPqTyFsBmg6dvtdlxGRSdn2l4YhGgpp2M
 TEbAin9Abtfcf+PSvvcJTVuneaDzSRcDb2tZDKuY9bfMWflUgo+yoOv122yelZKe
 YX6GCr7VdccJr2l1tBYQmTVqTHT0x3HDIIJl5r6p4RWqC+vmyZC45kuLYkQaLAf3
 02wf4KYGtPtH9eNskdObT2YEGBzjiOiVeU9aWoSH3NkDT4DGxflX7E3ZsB0HGSzV
 40qQpDIGnIQ6U+FZYs4zJEv/sjjAWo3NJbfmlJYhebddUB9/FVIXErgRhOzksX2Q
 ==
X-ME-Sender: <xms:DeVvYCwFb7EEdjbVyV8_qSuW2T-zLc_alCF2XdjjD1aVQ6-7v-G-bw>
 <xme:DeVvYOTXcH-ajixVXiFwdSUnsvGkX7Z0IICsypUksj9EN2wT8niG2Guai-fx11Bab
 rQsAD4Tm5NN-kpsCA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudektddgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:DeVvYEUck1pddY3R2NbSi-oYdazQXk0ZImdpcmIscJsJP402DUNc3w>
 <xmx:DeVvYIhziOZvZecLSXydXe2nG7op-y_qEsHyO4oFUhPDHEjqHH0Syw>
 <xmx:DeVvYEAliW1uFjF-Tk207fuTPbYMqRv_vfB04OVmG8dcEPq_4HcldA>
 <xmx:D-VvYE1AxOQX27pz2YOcLMaHbrSy6fojo_ag6CmEfA9FsEwyl_7Xtg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7ADBDA0007C; Fri,  9 Apr 2021 01:24:29 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <a181f404-ea59-4956-abe3-60d0bee917d2@www.fastmail.com>
In-Reply-To: <CACPK8Xdw3+2Rt=tQ-ciusyK=W6BaP_DR4FSFp0qDuPq5z8MPBQ@mail.gmail.com>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <CACPK8Xdw3+2Rt=tQ-ciusyK=W6BaP_DR4FSFp0qDuPq5z8MPBQ@mail.gmail.com>
Date: Fri, 09 Apr 2021 14:54:08 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lUjdH-0003I6-P3
Subject: Re: [Openipmi-developer] [PATCH v2 01/21] dt-bindings: aspeed-lpc:
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh@kernel.org>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 9 Apr 2021, at 12:48, Joel Stanley wrote:
> On Fri, 19 Mar 2021 at 06:28, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
> >
> > The LPC controller has no concept of the BMC and the Host partitions.
> > This patch fixes the documentation by removing the description on LPC
> > partitions. The register offsets illustrated in the DTS node examples
> > are also fixed to adapt to the LPC DTS change.
> 
> Is this accurate:
> 
>  The node examples change their reg address to be an offset from the
> LPC HC to be an offset from the base of the LPC region.

Everything becomes based from the start of the LPC region, yes.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
