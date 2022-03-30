Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C48664EC5AF
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Mar 2022 15:31:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZYQQ-00065d-En; Wed, 30 Mar 2022 13:31:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZYQO-00065X-NB
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 13:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sleTbU3o2LpxIYiBmlX/kKYFsR/lkVlTPZZsTo+MWCM=; b=ZgYgrOz4aq4xiC7QNWdSGG1kSQ
 yCmBxsSn3ZxTAK7OGYZIjXTDXAbh1gyOxPvUZlOFEEPKTxo3n0QQ68WmJR8oR882sKvFaNka5KMdu
 QUe7G91FjzWRDNPh6BJY8TnfkW9lfgReOqaW6ObnjnU51ndLbGT0sp/MIvQ0YaZwC0qk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sleTbU3o2LpxIYiBmlX/kKYFsR/lkVlTPZZsTo+MWCM=; b=EKKRUD7gbMSJJE4ZvLs3i7KhgW
 t4EqSzWEIeJ8xk0Xw6f/E7zBXPRzVOJoMXFVwfsEx+aAU92OO8e3t2NAuKb7AFg0tN+65A6Esn2Gi
 c2KExTmM+ceTTyT0DGcvlzqAGZhgZ0GYPu5gS2bageA7zuoprjNwdgafoIBrxjH2cW20=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZYQG-0002Md-J4
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 13:31:46 +0000
Received: by mail-qt1-f175.google.com with SMTP id z19so14747245qtw.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 30 Mar 2022 06:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=sleTbU3o2LpxIYiBmlX/kKYFsR/lkVlTPZZsTo+MWCM=;
 b=S11wbdv1fZMuKBFRCOo0G8y41Hc56Qh5/q7m5rprd9dpQVKyucpMvT5wMtAebrJBLY
 vDmTjmtE5Q2fCE18kywy1GtidztsePxM5Owt5Lok+ghb4Z3eb7xFEZyYYk6Cd8Q7xrPo
 Uq8d4U6Exn0adT+R+j7qzLOGTKaol8mVhBzJI/3RMmkbaCKWgLZM4LWt8M83brUKJfFf
 rv3oAcaPGVycMfhF7gBYRtuXGCXNUUCm0yXGluEWv20o6ziUMQhlcNvJ3gN8jNP6aM5F
 2EfuGYilPS8PisNifJGl/z/S8oms75Wv1XwIJUYMeeMDmDPBXFzDPbdshCDJG7bQTf1C
 JjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=sleTbU3o2LpxIYiBmlX/kKYFsR/lkVlTPZZsTo+MWCM=;
 b=EXiZhkytqELie/KDUP1WQjuCk4zz/mPNboEgytiXLsM46r6WskYdGq1MmivtRFplxj
 95SXeBttO9eo4M8DDJPs79v36Gr6g1oYlR5i17dA8NAfMspVS0//PpfFAokEAZrzTzSh
 qc3kjuwf7bdXKhoe8cn6WmZI5a6u10S5glxfZGe8KqEthJbL5N7qCM/gBRqQO1QTkGAO
 4x+a4Ho9UfWfsCwzjanfJXcjbT+tcX8dWOyJlGHtBpCB83ajCtkYvJCfhLtJTs4CKJhW
 jXbDL+K9mXqCDycGSSEYDWLBkLaBSq4dr+kPUVzH0M8zcPBR58P5fJaHjSyt4OxQItdw
 +hjg==
X-Gm-Message-State: AOAM532SdQfpZ6b3hM5laMMhIKzC1VcyXggH3N7pmnbTWX1F0wh2BUq4
 xJsdKfmUXF+tfqsJI7L83zm8kvIrgg==
X-Google-Smtp-Source: ABdhPJx9eZ5FPr2dLUqGAaQrb8udGsxnJKIokkzHWbt9HfdNcc31DVVKZV6LDvtNnJIin4EZXPl8Tw==
X-Received: by 2002:a05:622a:653:b0:2e1:c046:4825 with SMTP id
 a19-20020a05622a065300b002e1c0464825mr33430655qtb.430.1648647094638; 
 Wed, 30 Mar 2022 06:31:34 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 a7-20020a05622a064700b002e238d6db02sm17611593qtb.54.2022.03.30.06.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:31:34 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPSA id B33D91800BB;
 Wed, 30 Mar 2022 13:31:32 +0000 (UTC)
Date: Wed, 30 Mar 2022 08:31:31 -0500
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa@kernel.org>, Stephen Kitt <steve@sk2.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <20220330133131.GU3457@minyard.net>
References: <20220324171159.544565-1-steve@sk2.org> <YkQi6EIhknRJgv3i@shikoro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkQi6EIhknRJgv3i@shikoro>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 30, 2022 at 11:29:12AM +0200, Wolfram Sang wrote:
 > On Thu, Mar 24, 2022 at 06:11:59PM +0100, Stephen Kitt wrote: > > The i2c
 probe functions here don't use the id information provided in [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nZYQG-0002Md-J4
Subject: Re: [Openipmi-developer] [PATCH] ipmi: use simple i2c probe function
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
Reply-To: minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 30, 2022 at 11:29:12AM +0200, Wolfram Sang wrote:
> On Thu, Mar 24, 2022 at 06:11:59PM +0100, Stephen Kitt wrote:
> > The i2c probe functions here don't use the id information provided in
> > their second argument, so the single-parameter i2c probe function
> > ("probe_new") can be used instead.
> > 
> > This avoids scanning the identifier tables during probes.
> > 
> > Signed-off-by: Stephen Kitt <steve@sk2.org>
> 
> Looks good and builds fine:
> 
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> 


Thanks, I have this queued and I've added the review.

I'm just waiting for the merge window to close before I put it into the
next tree.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
