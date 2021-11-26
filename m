Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3515E45E688
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Nov 2021 04:28:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mqRue-0000U6-18; Fri, 26 Nov 2021 03:28:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mqRuc-0000U0-J0
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Nov 2021 03:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zr3d/aeNuGTjaNJ+1aJnFkBFofM1DRigQeVICXWqE6g=; b=Wv8aslnJoTDUxpLXpQDvfjm22k
 feSzvPVXypBBF5g1EEGUQSHGZxevc65v2oABprTJL4kQlRxgggt52XpUw8VTpvQjtMlFBO3NqDHq+
 JtyyQsNkYhRhRwHaZ1bsHiRgbCEN14OCOZOtjFWlNUbBuyo0Mw+LVzTu4RdRNGBWCnnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zr3d/aeNuGTjaNJ+1aJnFkBFofM1DRigQeVICXWqE6g=; b=A9VK4ciXJ7sJGG6ajLKOjwiY15
 pC0dDNKRn0tlVqYC0CdX/XMrlZZVIOXBh818Li/Ro80aBBDshQZbpDYgKyBCsUVl0SFWBoy5An7jC
 4c4TLnyuatGKkpYSd7c3Meqg2SQrh9ifI6E7MrBrQaz5GecWEFoune/AkC6/2fWriZU8=;
Received: from mail-qv1-f46.google.com ([209.85.219.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqRua-0008OA-Bg
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Nov 2021 03:28:35 +0000
Received: by mail-qv1-f46.google.com with SMTP id a24so6136292qvb.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Nov 2021 19:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Zr3d/aeNuGTjaNJ+1aJnFkBFofM1DRigQeVICXWqE6g=;
 b=OzTJTq9YHKP64dY6YrTPjoqOBUWOm/oisRpF14mfcrvjy6crxMmwS89KpQq+FChsr2
 3RKixEEsRmery0WVQ1xkE3GFuCivB53c8Yf24Z42SmLkarz2eiteZ555i8t0GgfgnHcE
 K7ZBOsbWSo0+DMDiB6apvVTlIfl2Xijq4MvMsmbFtbV74Xeftk9XAvoblr28nhBrdUfV
 0lbjUNsxyt1r2PwHegKTbLWPSth2R6qVRyz3nEMs+YUpBjp38o/OyFLn9T7ZXuxoYo7c
 X0wq3/lx4jk4Nn7YKEaG1IPVkvWbqKPQWq9MBFEc9n9rgnHmInGCkq2kzEalfY2XjcLp
 AExw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Zr3d/aeNuGTjaNJ+1aJnFkBFofM1DRigQeVICXWqE6g=;
 b=E16Fm5yKxJewcn/tmy0qhSY2kWbgQFq+IuIRouX40jYE7t7CqPwHrhzVgciLpBIXxp
 CI/1ipxIGMVQ7tg9J+EIkiJ4whP22Bgtx4w1Zr/96pAMtw5P/Q1HluCInhf/t+7wh/ag
 L0Bia0etCmJokkpNmavLcm30NJloxzKfF5lkDY7PMo2Pwsm4reegITeUlUoKjBxqx/Rj
 iuq++VahBuR3//oRONK39BobAteJTNyFS/zF56Xh/XRyHjpyZrqpCTFxs9en1SwFHr7V
 WPODlLVBAbkPtDba3sx0MYs/xE2VtBynwg/qO4GNjJ63q/pRBnO1CjtZZ3M02J7hT2jY
 2UoA==
X-Gm-Message-State: AOAM533SZkIL9tqxzsSxynEs0N4RWPe9j3qxIJ6MOLwAFQFgDyrmMF/u
 wGQflKHLUb2n/LrDI7eImg==
X-Google-Smtp-Source: ABdhPJwID8LSyzVXzGskQl33Uphq5vpudnGLG2zNElXr7p0Z7xq5IDI5wV8Nr6kEH/C1/oglGYVfuQ==
X-Received: by 2002:a05:6214:230a:: with SMTP id
 gc10mr10237101qvb.115.1637897306404; 
 Thu, 25 Nov 2021 19:28:26 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id d5sm2725466qte.27.2021.11.25.19.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 19:28:25 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:adf8:b831:eb9b:b451])
 by serve.minyard.net (Postfix) with ESMTPSA id DD7771800B8;
 Fri, 26 Nov 2021 03:28:24 +0000 (UTC)
Date: Thu, 25 Nov 2021 21:28:23 -0600
From: Corey Minyard <minyard@acm.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211126032823.GX15676@minyard.net>
References: <20211124210323.1950976-1-kuba@kernel.org>
 <20211125142140.GV15676@minyard.net>
 <20211125070543.7d3225af@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125070543.7d3225af@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 25, 2021 at 07:05:43AM -0800,
 Jakub Kicinski wrote:
 > On Thu, 25 Nov 2021 08:21:40 -0600 Corey Minyard wrote: > > On Wed, Nov
 24, 2021 at 01:03:23PM -0800, Jakub Kicinski wrote: > > > We'r [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.46 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqRua-0008OA-Bg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix oob access due to uninit
 smi_msg type
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
Cc: openipmi-developer@lists.sourceforge.net, andrew.manley@sealingtech.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Nov 25, 2021 at 07:05:43AM -0800, Jakub Kicinski wrote:
> On Thu, 25 Nov 2021 08:21:40 -0600 Corey Minyard wrote:
> > On Wed, Nov 24, 2021 at 01:03:23PM -0800, Jakub Kicinski wrote:
> > > We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of
> > > size -1) after user space generates a message. Looks like the message
> > > is incorrectly assumed to be of the new IPMB type, because type is never
> > > set and message is allocated with kmalloc() not kzalloc().
> > > 
> > > Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
> > > Signed-off-by: Jakub Kicinski <kuba@kernel.org>  
> > 
> > This is correct, and in my queue.  Thanks for the fix.
> 
> Where is your queue, BTW? I see not T entry in MAINTAINERS and nothing
> of note in the github tree from which you send PRs.

It's at github.com:cminyard/linux-ipmi.git for-next

I hadn't pushed it up yet, I wanted to do some testing.  I just pushed
it.

-corey



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
