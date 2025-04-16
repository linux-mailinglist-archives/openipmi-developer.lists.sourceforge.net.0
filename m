Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3479BA9042B
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Apr 2025 15:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u52fG-0007Bt-41;
	Wed, 16 Apr 2025 13:18:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u52fD-0007Bm-Vd
 for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 13:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wa6MsH58z3XLwdZ2LbORmPsv7fxdG2RZCdMCz/p7LwA=; b=hwSKxs0cCyBmmcI7gezAVn7p03
 EfaMHREgqcfNlBINEsEm4daMKg3YOqj8EZ9pQjhPpNnUFgGzRHWrQZhTPXq/l7Qkt0y9qkuRG7Pqc
 Pl/QBBzVJOKcKmN20H9+qDnkgrM9DFkhMg2wZ/qgicqOfKDi65ojPHEfjIO5Bf7JdOCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wa6MsH58z3XLwdZ2LbORmPsv7fxdG2RZCdMCz/p7LwA=; b=ScQOoPMFnPpvHoeLIRrB2Ysuld
 2unOnZ+6DpYFCxXx2uUZwTse7wRqAPhFYf2/VRwchNAb2+6F2Tj9AnLMPq4NIjsEssnJLcB68K0pa
 MwZf6roqHt4IwexWFA43nVBqkicH0DAyoguWvBvzxHV0Az1UFFUFONUxircQeiVCRdT0=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u52ey-0008Nd-Ie for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 13:18:52 +0000
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-3fa6c54cdb2so5017884b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Apr 2025 06:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1744809511; x=1745414311;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
 :reply-to; bh=Wa6MsH58z3XLwdZ2LbORmPsv7fxdG2RZCdMCz/p7LwA=;
 b=tAHAs9pCFOo2/GuAcLPaBczMDydtlqdNKO7b2jUBELSvM1mnKzG9IlRp6Mn9otjv0z
 JGvnSRwWfvYUOlvXs1plN2ofC4yoXBWeo/bpJz431IsuEppu0rU6koBuztHxgAFLfF8o
 frYT+8BaFJYgszSdPJsp6xh30Fh/3sBrEE8w/B10bSCI1LbxhJSeMLr1mrwaRxVp2tHj
 76i6HBFQrnkYa6gdhDV1G79p4mAkYghLTccdRpP7ZN3T9eJN+jo0twxj0m3adY+XN23l
 w34hOp8R9n0N8O55jqFaf5B3hegAJvtZQX3WNpTEhhU9ZFEqAdVps7FI6FtvSVypcHFo
 cyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744809511; x=1745414311;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Wa6MsH58z3XLwdZ2LbORmPsv7fxdG2RZCdMCz/p7LwA=;
 b=MzfkHptXMpB1MzB9ULEClW54StZXM8VOW/UjG1BdcEFb8xLy8UmmaQmUFwpWqq/Acp
 eJBanCUEsH87S5qIWVzAqn7Nk/R73X3XeIRRmMyW0MSpBwCfZ4Uv3JIJ+eBpHb7w1LZA
 vzC/w4VYWCau3JQDGTGoBF1rTYTg6VyLbY4ZDRBJlHCahZUDPwxBjwk8VbLKU1PrjjZy
 cfeg+KBtjcjlCYi7nFa6YMQMFc5npGi90cDJU3RUi/gCXifNjp0u0NM1NgpHCs+rFqxg
 hnyrh+Mz8zyNvSAHdntezK5yWMdAIs5PCHAsCxxlOaAFoACGPMq4gh4TnkO5VsgbxpAt
 IQ8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqOr/Dn29on0KmPeKJcmBeN3BH4dgGUbzDSznu8NhccNgT69FT8B5+0OgcvvjRMTVDRuKsc1mb9f1SLIw0G0Alu3M=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwhgTSjg3TXXtw0QqselAdaZ2Mzyekkea3dvGIbsiCKSphCaVQO
 gAiS+Ur3Xf91ET2QjDGusS2YXrraY475cUU2sV7fO9E+2u+pLrhW/1Jl5+cxbL8=
X-Gm-Gg: ASbGncttVLzVUdaOtFRoRq5MExedIttbgJA7lHpqYwcH915k3xeDSh8RrIGVt4r9zn5
 351X9Y5cYJSVVgynAvLAzI3V3q8cKCRszxLLdHztFdhnHmMyhTZy9HMP+Z6dBofnHzoLHCAxX3r
 dJWY9uvBtOpQM9f7XRfmlKy4oZ1IaON1pxm4rApMieD9napvkxyFuutZ+qLhx55m/EQ+AMQEEEl
 OmWFFKUW2lfQE5WDly1Oo0wm8TvB44sj39eQoRNjEFPrD/iuSefn69h0mulU82nlTkqQatv9UN5
 Ul9Dy1tgzNhEcHjNQOd7wtna7Je5RNK+SoZnqKhY+3w=
X-Google-Smtp-Source: AGHT+IEXdh9viCyTYOko4w3G6Y1ne2GquJIMBJqCkTdtsxhHOobGstbQxj5tY4onr49Ez0e5MxXfkg==
X-Received: by 2002:a05:6808:3507:b0:3f6:a7c7:90a5 with SMTP id
 5614622812f47-400b01cfd6dmr951383b6e.16.1744809510906; 
 Wed, 16 Apr 2025 06:18:30 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:1e17:765:833b:6e44])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-400763b6c95sm2806002b6e.48.2025.04.16.06.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Apr 2025 06:18:29 -0700 (PDT)
Date: Wed, 16 Apr 2025 08:18:23 -0500
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>, Rik van Riel <riel@surriel.com>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel-team@meta.com
Message-ID: <Z_-uH_aBVqLSkC2u@mail.minyard.net>
References: <20250312131932.44d901f7@fangorn>
 <20250317-horned-nano-degu-a6e5bc@leitao>
 <Z9gVMuEMk9yNNL89@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z9gVMuEMk9yNNL89@mail.minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 17, 2025 at 07:27:30AM -0500,
 Corey Minyard wrote:
 > On Mon, Mar 17, 2025 at 02:33:31AM -0700, Breno Leitao wrote: > > On Wed,
 Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote: > > > O [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u52ey-0008Nd-Ie
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix suspicious RCU usage
 warning
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
Reply-To: corey@minyard.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Mar 17, 2025 at 07:27:30AM -0500, Corey Minyard wrote:
> On Mon, Mar 17, 2025 at 02:33:31AM -0700, Breno Leitao wrote:
> > On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
> > > On recent kernels this warning fires:
> > > 
> > > drivers/char/ipmi/ipmi_msghandler.c:1238 RCU-list traversed in non-reader section!!
> > > 
> > > This looks like a fairly simple lockdep trigger, where
> > > list_for_each_entry_rcu and list_for_each_entry_srcu are
> > > functionally identical, but the lockdep annotation in
> > > the former has an extra check.
> > > 
> > > That extra check is whether the RCU read lock is held,
> > > which is not true when the code uses srcu_read_lock.
> > > 
> > > Get rid of the warning by using the properly annotated
> > > list traversal macro.
> > 
> > Thanks for looking at this one.
> > 
> > There was a discussion about this issue a few years ago, with
> > a different approach that never landed upstream.
> > 
> > 	https://lore.kernel.org/all/20201119123831.GH3710@minyard.net/#r
> 
> I thought this looked familiar.
> 
> Breno, I believe you suggested a change to the patch that sounded
> reasonable, so I removed the patch, and then nothing happened and I
> didn't follow up.
> 
> This is kind of a mess :-(.  Let me look at it.

I've been working on this, so it's not forgotten.  Actually, I've mostly
been working on a test framework for the IPMI driver, which has been a
fairly big job.

The modification was fairly easy.  I decided to just pull srcu out of
this and use a different method.  And I'm not going to do that without
some serious testing, thus the delay.

Reviewing the code has shown me that the IPMI driver needs some TLC in
some places.

Anyway, expect some changes in the next few days.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
