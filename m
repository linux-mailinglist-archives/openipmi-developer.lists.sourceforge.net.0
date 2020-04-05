Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FE919E9A9
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Apr 2020 09:00:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jKzGN-0005Ge-Ua; Sun, 05 Apr 2020 07:00:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1jKzGL-0005GP-Bq
 for openipmi-developer@lists.sourceforge.net; Sun, 05 Apr 2020 07:00:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yWE5iV1vF2rjVGqJzP4udG6OgWvMuVfD2zKlW0VL8vc=; b=gAnlleOqTPUqcCEBvWhOmPTQKx
 /oBMeS2M5N+q4E0KXWYl2OmavI3frWqc6RYHhwtYAh8cg/0dzxxGlfl81YsVbnc25vsfMBH0sg0fe
 wEuI1PQ/HljpXHCl3wzjxpCul7Ponfa2EK5FtkQ6KJLpaOvDsl6VRqQOGmI2fpnM4AYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yWE5iV1vF2rjVGqJzP4udG6OgWvMuVfD2zKlW0VL8vc=; b=kHjHujXKYIyddVbfMdooXQ8vt5
 BPScUebjZQPU18RgW7QnlJnb4Mt/lyMap4SMKiWuh6h8AFZbR4gead1rkq9+eL/se6qVVXNNJenO7
 uPNekc9ytW1gKdeMwan+PCgg5pmBNIhwXtmk6Km8fIfhGUI1tJbCcPal9cDgtx9UI2J0=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jKzGB-002YTh-4B
 for openipmi-developer@lists.sourceforge.net; Sun, 05 Apr 2020 07:00:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id AAEDE58026A;
 Sun,  5 Apr 2020 02:59:50 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 05 Apr 2020 02:59:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=yWE5iV1vF2rjVGqJzP4udG6OgWvMuVf
 D2zKlW0VL8vc=; b=goGwj/jmvd74/4dXXrkmJVPe5xI9r3yKgasZjk9WlI8sZvA
 Hq8FllL86de3H+jkfEIilxOxo12fkh/uZUGny/AvGivr3scfemC7SN6haQ8cLUDX
 kNhFTFxt3PvIwPTWj8+orWCj7oZPLvd5Jy1TS0VAMqEv9td8mDYMkk8gex5pvoeA
 ucNFcYwGXilpC8XYUKedvB+1ommO41Vzbiusd1/aW5yknjdpImx7oilaa+/dl9qW
 KE3k6T7vf1ggYLO/YNXbgb4F8FxAlcVUZ/d5VQ+sZyJEYLzQw5rkmZD96vbYLLu/
 Vlukw8OOzCVMFp3RsorCHmsR+YcxKKESTznHguA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yWE5iV
 1vF2rjVGqJzP4udG6OgWvMuVfD2zKlW0VL8vc=; b=QQpV+ip6yBO7k7deoxKGUs
 rW3WfZZP7kKZy5IZipRQlASYytedxXztVz9s6lAsbr9r1rfrO4aaV5W/NgiNkG2E
 dcwvdQ+XbPv7RwpPM2Ek7A+AqhaYPEQtoEg8FP2ct2LKqXsA//neIK5q0H5Kmv9p
 ESfTAcXiw+aRhyXlvNuR5YKUOayawJtEIkwpYkOO6fSTgb142/azseN7ik/FsTbf
 JdXgvn/gh/lkZtCk6sYTR3NB8gvhSy+5/RNDytiIgGfJH0n0RNJG5OJg8SLaezdB
 dnVkGcD2iuBA+cRfi5P7ID9bOvcIdfhofBrMax6bBiggzvEoSgEP/OpDUMvMtw1Q
 ==
X-ME-Sender: <xms:5IGJXgh39OEGA02bB29v2YQALa7x8qIPFiG_n0zd-ko5F5rCutG2cA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvghsrdhpihhnghenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiug
 drrghu
X-ME-Proxy: <xmx:5IGJXoUMkaRJo6jN3vOIm7edHXudlz9cSM0j6tpYFurIuA7U-IYdnQ>
 <xmx:5IGJXvCM5nfC-tJ_HT3EdJZkXcpgb3h5JENEvcJysnffznYFloNhjw>
 <xmx:5IGJXslnrlyKOycSkd-ZzaXEsrp6Cgglk7UNiANZGtnAa-OYfektrg>
 <xmx:5oGJXtU6C2CZPne5rDC3sbV-JSzh2weW3z2qanuGgwholBRpBXk-Qg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A15A8E00B1; Sun,  5 Apr 2020 02:59:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1082-g13d7805-fmstable-20200403v1
Mime-Version: 1.0
Message-Id: <69bfc045-2059-4d37-af7a-52f5840664cf@www.fastmail.com>
In-Reply-To: <20200403130840.GR2910@minyard.net>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
 <20200403130840.GR2910@minyard.net>
Date: Sun, 05 Apr 2020 16:30:09 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jKzGB-002YTh-4B
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
 linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 3 Apr 2020, at 23:38, Corey Minyard wrote:
> On Fri, Apr 03, 2020 at 02:20:21PM +1030, Andrew Jeffery wrote:
> > 
> > 
> > On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> > > Hello,
> > > 
> > > This is a short series reworking the devicetree binding and driver for the
> > > ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> > > changes enable removal of more than 100 lines of warning output from dtc.
> > > 
> > > v1 can be found here:
> > > 
> > > https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> > > 
> > > v2 cleans up the commit message of 2/3 and changes the name of the property
> > > governing the LPC IO address for the KCS devices.
> > 
> > Ping?
> 
> Sorry, I've been busy.

No worries, so have I. I was surprised when I found it had been 4 months :)

>  I've looked this over and it seems ok, and it's
> in my next tree.

Thanks.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
