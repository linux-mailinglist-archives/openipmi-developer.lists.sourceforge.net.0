Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F8D40F902
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Sep 2021 15:19:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mRDm6-0006Sp-5P; Fri, 17 Sep 2021 13:19:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mRDm4-0006Se-RS
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 13:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=irpWsGGMsGJ4DtpFXdv5OWCvYLCIS8iAXj1jsW9bhIw=; b=fkvSst04XM+XOHzvqqX4J8R10m
 eVUUnLCHqngN5AmclVopQxtB8OEPOFXM6Eu15BKmpNCreiJVgvYPVq4vGItx0qG4JO5KR/ssXTZqi
 k9WyW7WLfG60F+7UIHqL/MgoMBpBY1EdE/CCRH2wje6spKT3+QjdKcDnICBCYqpP2fvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=irpWsGGMsGJ4DtpFXdv5OWCvYLCIS8iAXj1jsW9bhIw=; b=SOsVgZ5vAPg5NNcGY1ohSeuxPP
 Li3/0PODftcKuWOW3fdUUjUzU5dbaIkBCoJYJ0c4pytva2IIX21hiX6s5+JBUJ8JAUp29Kme2xgCt
 mmAmYaIc9DwyqTYNS7FGShssUQixUxlOYuB4GNH6WLaGMEUqFGfGKkKOuMPxCwn/c7Lg=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mRDm1-00017O-GB
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 13:19:28 +0000
Received: by mail-oi1-f180.google.com with SMTP id j66so13867599oih.12
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Sep 2021 06:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=irpWsGGMsGJ4DtpFXdv5OWCvYLCIS8iAXj1jsW9bhIw=;
 b=HOEWU8hoOtlFTQ/p0WLcdyNuhPKn/eTLAE1+a06NQBp7Q8yCpS2JwNHYsHy3pyVk7F
 4bNjsVx7/qfiszEFidmUBtJOXxfukA3yi9juAyBiNnWDFtdw7MW/yWHHaH4W1yJeM3Ys
 BvLjprqxKIoUOeOOkVeFcingSXccWb9Z/nKHS7NoOQb/M8Vru8kSXjREhMLk/e4jtvn/
 W1CSMVv7Rf2YnQ5b6vSSfXtLz5QcXuNjzSiqHIrhAyueRfz9W7cn80oEGjejw9YgxmZ9
 8JsRjS0HZFx4pzw8OMGRuOBsXmRpxwfiZBZvhJ+lHdiGG3b4ewgFxlxhrok9vFOEkKip
 yrkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=irpWsGGMsGJ4DtpFXdv5OWCvYLCIS8iAXj1jsW9bhIw=;
 b=ZQDWEjdLRHpeUcTFX/styX/yYcxBOJiiBnIUCxC6/VkNmeQexVOa9KZ+RogA/zYfwO
 YZY69oXEH5VoH9M63PQ7UROA/njQakzjOdvhjpmZDG07mBGf0Ozr2l3yd+w5RQjz4TES
 oUM6JQp4xa8NVqljWseUrW3EQ+mmR/Bp8HCtMoaHco2D0yoYWvTeUS7VQKJd4BghN/+n
 eujib7iPyR7oae16G8XvVg4/qm8Pziw8AQmGTgeeLLiMDrtFwkdRLnWLWjg4qPBMCqXc
 iJWczYeTc93XFxxwoXwLs+pK6h8Vun8dGc9asUt/YVT/kYCPRBq6rYyFS0KGnw8e8boz
 Ailw==
X-Gm-Message-State: AOAM533/t6vE5ZVjHKmA1bhfcc6DmKB+tsK++N9Mjru+AdDBt7riRFi0
 bKVSNuOSP2KOQrfMul5pzA==
X-Google-Smtp-Source: ABdhPJwkobeH+ck5CNHupTxaPfqYHxRqiljqdH3EHSMFHWtP2kQvV2Ig0caKyxyBDALGjuiume/6sw==
X-Received: by 2002:aca:da05:: with SMTP id r5mr12947235oig.30.1631884759752; 
 Fri, 17 Sep 2021 06:19:19 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id y26sm1463153oih.2.2021.09.17.06.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 06:19:18 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2dd4:10f2:4a03:3baa])
 by serve.minyard.net (Postfix) with ESMTPSA id D217D18000C;
 Fri, 17 Sep 2021 13:19:17 +0000 (UTC)
Date: Fri, 17 Sep 2021 08:19:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Anton Lundin <glance@acc.umu.se>
Message-ID: <20210917131916.GB545073@minyard.net>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917125525.GF108031@montezuma.acc.umu.se>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 17, 2021 at 02:55:25PM +0200, Anton Lundin wrote:
 > On 17 September, 2021 - Corey Minyard wrote: > > > On Fri, Sep 17, 2021
 at 12:14:19PM +0200, Anton Lundin wrote: > > > On 16 September, [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mRDm1-00017O-GB
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 17, 2021 at 02:55:25PM +0200, Anton Lundin wrote:
> On 17 September, 2021 - Corey Minyard wrote:
> 
> > On Fri, Sep 17, 2021 at 12:14:19PM +0200, Anton Lundin wrote:
> > > On 16 September, 2021 - Corey Minyard wrote:
> > > 
> > > > On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
> > > > > Hi.
> > > > > 
> > > > > I've just done a upgrade of the kernel we're using in a product from
> > > > > 4.19 to 5.10 and I noted a issue.
> > > > > 
> > > > > It started that with that we didn't get panic and oops dumps in our erst
> > > > > backed pstore, and when debugging that I noted that the reboot on panic
> > > > > timer didn't work either.
> > > > > 
> > > > > I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
> > > > > in an oops").
> > > > 
> > > > Hmm.  Unfortunately removing that will break other things.  Can you try
> > > > the following patch?  It's a good idea, in general, to do as little as
> > > > possible in the panic path, this should cover a multitude of issues.
> > > > 
> > > > Thanks for the report.
> > > > 
> > > 
> > > I'm sorry to report that the patch didn't solve the issue, and the
> > > machine locked up in the panic path as before.
> > 
> > I missed something.  Can you try the following?  If this doesn't work,
> > I'm going to have to figure out how to reproduce this.
> > 
> 
> Sorry, still no joy.
> 
> My guess is that there is something locking up due to these Supermicro
> machines have their ERST memory backed by the BMC, and the same BMC is
> is the other end of all the ipmi communications.
> 
> I've reproduced this on Server/X11SCZ-F and Server/H11SSL-i but I'm
> guessing it can be reproduced on most, if not all, of their hardware
> with the same setup.
> 
> We're using the ERST backend for pstore, because we're still
> bios-booting them and don't have efi services available to use as pstore
> backend.
> 
> 
> I've tested to just yank out the ipmi modules from the kernel and that
> fixes the panic timer and we get crash dumps to pstore.

Dang.  I'm going to have to look deeper at what that could change to
cause an issue like this.  Are you using the IPMI watchdog?  Do you have
CONFIG_IPMI_PANIC_EVENT=y set in the config?

Thanks,

-corey

> 
> //Anton
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
