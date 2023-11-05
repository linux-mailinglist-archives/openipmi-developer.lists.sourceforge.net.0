Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3B87E17C7
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Nov 2023 00:02:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzm8D-00058e-Ak;
	Sun, 05 Nov 2023 23:02:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzm89-00058P-8M
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 23:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=04hJQYLWQCJ4CRv9lZP5YG9RTCflGKtfQuIl4H68cJI=; b=Jt2+rg9m8K9RbLO9NpYmkR5mpT
 dMGiCebpgvno5EaYuHDAVX8x1e+WvFpkHnlKyl9kDcbgbZRSMt1ncMhJlz25T0YoCEeXO5BLV05HO
 xFgTo+KKxxH9Xb26THdohFX87ffbywrKjWlQ1a7xbvr1x5YG1QnSzdWjPu7x1AIbNJ+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=04hJQYLWQCJ4CRv9lZP5YG9RTCflGKtfQuIl4H68cJI=; b=SqeGGvlxbdFACEwnjGx5yoicrk
 VKiC/qKVHDJ29YJLdyJ257/+kWZkDERC7l14YiNx4TQtAmjbS9lwY7PVq3BnVeNeKsmZZPRO0yGK9
 LdkO50k6OEG2ZrWCnjCYacvs6wYYa4joZEOld8FjwP28hKHb4wT6ON1eDx8yqXeFpbvU=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzm88-0006dx-DG for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 23:02:09 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A739120075;
 Mon,  6 Nov 2023 07:02:00 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699225321;
 bh=04hJQYLWQCJ4CRv9lZP5YG9RTCflGKtfQuIl4H68cJI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=CQY/Yg8tFzkQ/t8U2VI16F8ktZiHrqYp9yZeDdh9PWOedddtBl79Pc7c4BlxqT7v2
 GsFrlEGexwSYOP9ozh8142zA5HL2cTdQcza5TUEPGK1/P8AmU8d7bA7elx40t8zGna
 m/U4svtuVn+5ea/jsEAy9hkO8GTo/u+jRfdwPTGfgBw7LyWUaXRCBe1o/T5MVkUM9I
 j/HHagzuPjOIonpETGlrOU6YY6OxWpZt2q738n6uT2AC9edhGFsxNzRsqG4rqFMW7z
 GJwlq0Yp6YDzH3z4fjIq1j6hFPWLwLiT67TstHhcpQokg7/xo4KG0G+PQ2rYcLOPga
 0pWkZSFo4mKdg==
Message-ID: <e5a67378554d5434124f637189409a3c3bca3915.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 09:31:59 +1030
In-Reply-To: <20231103145129.000067d8@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-8-andrew@codeconstruct.com.au>
 <20231103145129.000067d8@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 14:51 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:19 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > KCS client modules may be removed by actions [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qzm88-0006dx-DG
Subject: Re: [Openipmi-developer] [PATCH 07/10] ipmi: kcs_bmc: Disassociate
 client from device lifetimes
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 2023-11-03 at 14:51 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:19 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > KCS client modules may be removed by actions unrelated to KCS devices.
> > As usual, removing a KCS client module requires unbinding all client
> > instances from the underlying devices to prevent further use of the code.
> > 
> > Previously, KCS client resource lifetimes were tied to the underlying
> > KCS device instance with the use of `devm_k[mz]alloc()` APIs. This
> > requires the use of `devm_free()` as a consequence. It's necessary to
> > scrutinise use of explicit `devm_free()`s because they generally
> > indicate there's a concerning corner-case in play, but that's not really
> > the case here. Switch to explicit kmalloc()/kfree() to align
> > expectations with the intent of the code.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> Bit more unrelated white space stuff in here that ideally wouldn't be there.

Ack, I'll address that for v2.

> Otherwise makes sense to me.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
