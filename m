Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A59D44E9B4D
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Mar 2022 17:46:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYrZA-0003ul-Ee; Mon, 28 Mar 2022 15:45:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nYrZ8-0003ue-Ml
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 15:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gpKxm33hG9nlHcEeqdiWQbm6h6iJLFhuhpxRsRgto7o=; b=SVO7ynQmmeWtkClBN2XWc0j9jr
 VtVA/TkOo5lVBCXqM/86FfLbB8U8rKBIjD8KoJHuwiVsA3RbOZUMqg6C1G8g4H+W9nG+TSbuQTJm1
 AlqgOuYzl2XQC4XtxHJL61kvG0x9nf+DOB7DCASVrtl8eTXzwyCKYHX6TgN6tQowy5Vo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gpKxm33hG9nlHcEeqdiWQbm6h6iJLFhuhpxRsRgto7o=; b=T+knOqEZ7+dk33NrTwkGzitP64
 GwaWjMgmIJckbk5SFluULgJKPuzIfpFurAjTwYRskLOKuO061XZXuQWcBoCVzXfd5/INAx+Mqf6QJ
 0SU8VjR1anyPM1BzTRxkjJqr2MZTsakY+SeeItQ4who2MsO+oXlqT02/2nV+dcn8LP3Q=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nYrZ6-00EjNT-5J
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 15:45:56 +0000
Received: by mail-qk1-f173.google.com with SMTP id 1so11720536qke.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Mar 2022 08:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=gpKxm33hG9nlHcEeqdiWQbm6h6iJLFhuhpxRsRgto7o=;
 b=oCkITZZSAoa7y+hGguyS6MYAAj6clot3WbUGb1bkh0zxW36mOa42SJn/W7VWs+qBzF
 NZWwsjDdWthp62hG/h8MmtbSEcLYbfRknvuL0KVqLDbvlGDgV25H2MZ+luWOI8W0GBmC
 7ilc8G3nDSUAJHjXaKUYJFNRJgvKsHYwEn3QjLfJgkhIJXPI4seFdwdHykmR1Vky+60W
 9974Z8xqR812yGnZ9M1hbeoqigYJTlvOhVCaXmPVQE3n3BWNI/8PELi/qEz0IpjGoUKw
 UgNBqux8eyhkUgs1IZajaw2zxupS3J8FZhQ2h9iFQBaEvV3+7G38+ty5kNoEF4CzMOEi
 mPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=gpKxm33hG9nlHcEeqdiWQbm6h6iJLFhuhpxRsRgto7o=;
 b=qKMUPJ6BtXYWJCIRD/eR2yu3EImB2lhNa4hkl23O1Zl4p2F/+RilzzcB4ps8s7PZm7
 my08tGjOg77fiary+mLdiFqLclae6E6DAB/HRIkhoIKkrEP346sdXzOULkNFKLWZ8TAT
 SwjqrCAU2Vu4e2++VfGi/QJ+VKO6SbANCU+QeNXAweB3mzubrNyCJzbAZxwb++Vh7VOd
 3hhJrB7gxk1gUql0+zYJboFtxWuktx+W1QoGHjko8e4bBiJbbcFVYlrjSFT58ByP8jBq
 9t+VtwUa30joYurSj6dOff6/J4CYI6FFPRawr/s83oUF6ZbsUmP40IF215OJ+L2IzPNZ
 KJJg==
X-Gm-Message-State: AOAM531HXEnvDL12IeH3apM9o/8rDOjT5erj2mxy9qsFohpU2zUPpJ2d
 YiIh6HrqhfKX3Vz5oQZ3Sg==
X-Google-Smtp-Source: ABdhPJy+d0vkilsCh1sUV4QY8DsbGQhl3yNH29Gx6ttYWR/k7mndA1lBvqqUvDWmjH1iCrQlT31YAw==
X-Received: by 2002:a37:a693:0:b0:67e:c38b:c938 with SMTP id
 p141-20020a37a693000000b0067ec38bc938mr16124821qke.206.1648482349800; 
 Mon, 28 Mar 2022 08:45:49 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 u20-20020a05620a455400b0067ec0628661sm9141522qkp.110.2022.03.28.08.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 08:45:49 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:80fb:65f7:c1f1:9f2])
 by serve.minyard.net (Postfix) with ESMTPSA id C43301800BB;
 Mon, 28 Mar 2022 15:45:46 +0000 (UTC)
Date: Mon, 28 Mar 2022 10:45:45 -0500
From: Corey Minyard <minyard@acm.org>
To: chenchacha <chen.chenchacha@qq.com>
Message-ID: <20220328154545.GP3457@minyard.net>
References: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
 <20220328013842.GN3457@minyard.net>
 <tencent_071EACFAEE3F0CFA14A674C4603E39026F09@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_071EACFAEE3F0CFA14A674C4603E39026F09@qq.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 28, 2022 at 11:27:06PM +0800, chenchacha wrote:
 > > > Anyway, a better solution for the kernel side of things, I think, would
 > > be to add limits on the number of users and the number of [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.173 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.173 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nYrZ6-00EjNT-5J
Subject: Re: [Openipmi-developer] [PATCH 0/3] ipmi: msghandler: check the
 users and msgs causing the system to block
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Mar 28, 2022 at 11:27:06PM +0800, chenchacha wrote:
> 
> > Anyway, a better solution for the kernel side of things, I think, would
> > be to add limits on the number of users and the number of messages per
> > user.  That's more inline with what other kernel things do.  I know of
> > nothing else in the kernel that does what you are proposing.
> 
> The precondition for add limits, is that people known that ipmi has too many
> users and messages cause problems, this patch is to let administrator known
> that.
> 
> In addition, different machines have different limit, My server my block
> 700,000 messages and it's fine, and my NAS pc went to OOM when it probably
> blocked for 10,000 messages. So, to limit the number of users and messages,
> can wait until we have accumulated some online experience?

I don't mean a limit on the total number of messages, but a limit on the
total number of oustanding messages, and a limit on the total number of
users.  No user should have more than a handful of oustanding message,
and limiting the number of users to 20 or 30 should be more than enough
for any system.

Having those limits in place would probably help you trace down your
problem, as you would hit the limits and it should report it at the
source of the problem.

-corey

> 
> > 
> > Does that make sense?
> > 
> > -corey
> > 
> 
> thanks
> --
> 
> Chen Guanqiao
> > > 
> > > This patch provides a method to view the current number of users and messages in
> > > ipmi, and introduce a simple interface to clear the message queue.
> > > 
> > > Chen Guanqiao (3):
> > >    ipmi: Get the number of user through sysfs
> > >    ipmi: Get the number of message through sysfs
> > >    ipmi: add a interface to clean message queue in sysfs
> > > 
> > >   drivers/char/ipmi/ipmi_msghandler.c | 159 ++++++++++++++++++++++++++++
> > >   1 file changed, 159 insertions(+)
> > > 
> > > -- 
> > > 2.25.1
> > > 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
