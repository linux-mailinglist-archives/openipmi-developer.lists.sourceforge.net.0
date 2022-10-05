Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBBD5F5D3E
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 01:31:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogDr3-0008RC-Gs;
	Wed, 05 Oct 2022 23:31:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1ogDqy-0008R4-Pw
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iU/nKCqTxaCxk56ycxXhitLF9EE+iE5NgRpUWDX3ze8=; b=AiO1FpMfTD8PgrcV54YCKoWOfO
 WwSuWINhT+60AyjqacCVSj2Z2Q5Q5ZGHmBSkHQs1a0LklGcb8Jrhv6ZmMBatZBmZblaYbJzP2xiTX
 HIrYfkQ+i7vpxknNxfdHMdkVq/ED9yC+cfdwKO634QcHEr87l1JjUqUGPixnGU3CFsOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iU/nKCqTxaCxk56ycxXhitLF9EE+iE5NgRpUWDX3ze8=; b=MXslWfnuWHJSKSnEYuoLUrDmWQ
 Xhmi6UM88vIEiLffIU0/brf95Xa8LMF0EJmVHR3VLLwpg9YfpVmKxt5lxe8FphGweZ8fomQT0oefr
 wfp/GrvjvqIa/B9AgamB1OaaHpVpjlomrmvWkesbC8KerPBPuY44K7uKRn8nEowSxey4=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogDqm-0007O0-Rt for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:31:04 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 56B2D5C0195;
 Wed,  5 Oct 2022 19:13:23 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute3.internal (MEProxy); Wed, 05 Oct 2022 19:13:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1665011603; x=1665098003; bh=iU/nKCqTxa
 Cxk56ycxXhitLF9EE+iE5NgRpUWDX3ze8=; b=bCggjZMY4n18oQN/rXT+r9kqhr
 KI9lv6wGkTxIklY6JysdNLB1R7dofO6g24hG5YJt7LsR3D4E585mVcmdcmIoRMk5
 JTTfhQm7u9p43z3b3D9nu8ho+hoOIFMagSU2cPhRmY2Bpv6p/Y22cMvv6MkDetJP
 3LbwvHkNBUuIBb5D6oKpSDwzW5Yrwkop/o3FVphVtC3cRNKry1YK7O9N4PCc4Due
 HDmLGwV7Rvs+ftF3OZDv+rOE1pJPb7iF1jJrKUGvrJ5c7YjPW2u6a2vZ/9v0+7XG
 mF1hAIG2mVsZpBeuWM8zHD8zqRNxogsH6NPwsL/nak+rV/XJ0222Q+JkqQ2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1665011603; x=1665098003; bh=iU/nKCqTxaCxk56ycxXhitLF9EE+
 iE5NgRpUWDX3ze8=; b=0UfdeaWo7/DuxF2KFzWo9tzRulA4MusdpGQRZkZp49K4
 PjVHBBHr3JIVrH0sBnTMPxADQ9VJDzJHOuGV2e69qD+hNUULdl/g5lDpHiqmoaVk
 5JVbWyBJNeq3D+brpVekeu2W3c0IsKdtX7WW562u8R24bS+MRbiNbiBCLt5QcSJt
 e6jr/jvcBsDAl8FpZnV6xghuj5/V78b9TJDR3rg9C1oZ9ue61y3ehjCSNUBHopoM
 ff/Vs36v+xowT2rE1r8crLvx24K7ybHcXneWupSBwdf/gODhuV7n5Bad8iS4lu7x
 an12oDXuz64INAzo9+Z7ukUaEYw/HTXxlkpWtbshjw==
X-ME-Sender: <xms:kg8-Y0HWzac0cE_D5IsOTBgZ-1NKfZ4y9g01UZ-SiJ4KtAPbiIXP5w>
 <xme:kg8-Y9W7BIv0dBaUXwFce_lK-7GFXmanvR92Ai7N08FtFAi385bG2lFST3T_CdQdv
 yTozsQpYcAq4GQ1_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeigedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtf
 frrghtthgvrhhnpeekvdekjeekgfejudffteetgeejkeetteduvedtffdtledutdfhheev
 feetkeeiteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:kg8-Y-KvgUd1Et8MnOgIcjMQ4rz9mMBqcI9svm9xGaAclhQswwmFUw>
 <xmx:kg8-Y2FbeFuLq20oJftCsJOET4_-_d97lSUW7jTqitXlDZdHRZeirQ>
 <xmx:kg8-Y6XSB6zRsDa3th82xCUOD9ZQoNcw1N5vQNW_AenzEYCzLic29Q>
 <xmx:kw8-Y5SPgRnbzTHZbOJU-0NPHmZG3YJVnoGoF3vkjggV5lt4Yv3tFw>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D1F2E1700083; Wed,  5 Oct 2022 19:13:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1015-gaf7d526680-fm-20220929.001-gaf7d5266
Mime-Version: 1.0
Message-Id: <08c20621-e75d-4a72-82e6-b1980304e20a@app.fastmail.com>
In-Reply-To: <20220812144741.240315-1-andrew@aj.id.au>
References: <20220812144741.240315-1-andrew@aj.id.au>
Date: Thu, 06 Oct 2022 09:42:57 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Sat, 13 Aug 2022, at 00:17,
 Andrew Jeffery wrote:
 > The ASPEED KCS devices don't provide a BMC-side interrupt for the host
 > reading the output data register (ODR). The act of the host reading ODR
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ogDqm-0007O0-Rt
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to
 reduce OBE latency
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
Cc: linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Sat, 13 Aug 2022, at 00:17, Andrew Jeffery wrote:
> The ASPEED KCS devices don't provide a BMC-side interrupt for the host
> reading the output data register (ODR). The act of the host reading ODR
> clears the output buffer full (OBF) flag in the status register (STR),
> informing the BMC it can transmit a subsequent byte.
>
> On the BMC side the KCS client must enable the OBE event *and* perform a
> subsequent read of STR anyway to avoid races - the polling provides a
> window for the host to read ODR if data was freshly written while
> minimising BMC-side latency.

Just wondering whether you're happy to pick this one up? I haven't seen 
it hit the IPMI tree yet.

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
