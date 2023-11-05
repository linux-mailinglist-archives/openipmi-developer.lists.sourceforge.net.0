Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 103D77E177A
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Nov 2023 23:56:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzm2N-0001Qk-57;
	Sun, 05 Nov 2023 22:56:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzm2G-0001Qa-Qh
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BmKouZmZD2oA2wKKyTwBO38CA3p2KV+l6HWrITDlUJY=; b=lDPNLTlV1PBTZJg4QE0NJECuAU
 lgCfMauoxvPXnRDl6SZ6IgG1Uujn3Nb8pHXVQojwvEz4u+HFOU+6ylUqEP+V+xlVW2Hj20qTu16fX
 LwlGPCogGiK3tObEr7K2stlynRh2tnbTXgSA8gFu+wkkTZNLILY2zntpxJPVnmoalxJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BmKouZmZD2oA2wKKyTwBO38CA3p2KV+l6HWrITDlUJY=; b=fVsa05DpR03Sl2oE2s4Eh/b0xk
 whys5neaRa4MS2ABAY05+4xYjbuzpe4j+Vtpb/N+pLjeIUa8mwOqkjZC0BoJJMIO7UTH1EvpNYoDZ
 pxfP5ZXLC8kvi0jyaDqicmecII8mxUtOR+HzuYlt2ga9JVwp23dqnibcZVM006QWk/rk=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzm2F-0004yE-Qz for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:56:04 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3F79220075;
 Mon,  6 Nov 2023 06:55:56 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699224956;
 bh=BmKouZmZD2oA2wKKyTwBO38CA3p2KV+l6HWrITDlUJY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=AO6vOEIpB+RjBLjYHeCdrlWhQ1Ul3OXNUGjGEj48y64XyFQfC76q7qqYdrQqgHfRW
 P4ZAEBLswmawe5Ei45jvDKCm/eyLwHNpFmQWLfipn4mg4swYFOflv1azfPv7bKxuoH
 cebk++wB8RlNzkYqG3s+2bs5IufqCWBpFHxBQKcEVBMtDyG38NdytLEVl0NreDd9ZU
 dbThXQTsuQhzlsXsI1gvUwuGHaf7EXwwR9JXov880ch8vvkadoClxdqVeewERl+rCc
 NXJT0MPoIkMOlJSHURXr7jpdqHE9x+4sSUiegTdLrtHuS2bM/1holF0YHEuwONLrzb
 GeTdAlxlxQpkw==
Message-ID: <7318575f6a5715c4c77ff56e616dfde7877e101a.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 09:25:55 +1030
In-Reply-To: <20231103144559.00003faf@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-7-andrew@codeconstruct.com.au>
 <20231103144559.00003faf@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 14:45 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:18 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > Consolidate several necessary allocations int [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qzm2F-0004yE-Qz
Subject: Re: [Openipmi-developer] [PATCH 06/10] ipmi: kcs_bmc: Integrate
 buffers into driver struct
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

On Fri, 2023-11-03 at 14:45 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:18 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > Consolidate several necessary allocations into one to reduce the number
> > of possible error paths.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> Gets rid of some of the devm_kfree() fun, so I'm in favor of the change :)
> 
> One trivial comment inline.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks.

> > @@ -478,19 +476,15 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
> >  
> >  	spin_lock_init(&priv->lock);
> >  	mutex_init(&priv->mutex);
> > -
> Unrelated change...

Ack, will drop in v2.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
