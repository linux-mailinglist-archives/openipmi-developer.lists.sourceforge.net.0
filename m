Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9E74E8BAE
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Mar 2022 03:39:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYeLQ-0006lJ-Jb; Mon, 28 Mar 2022 01:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nYeLO-0006lC-HE
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 01:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eRVimM/CbpiWSNvnFN5TSgMFECx9ETly/qXbNK5IPo0=; b=kP7Ve9olNLlCC21OqxqYPc/gFe
 UfvornXq5KPJ3U+HdW1iIIGzHaXNy1I/42i3V7aFkVO4NmE/tItgX3IN0jae3fgcUo3tYstj5o4a+
 xTAcRKLRfHkepIJ4lFPB7DJGT3MXE8NXHM3HKFXj3TkTR97fl/RPPbg4RQ+BQ344BPMQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eRVimM/CbpiWSNvnFN5TSgMFECx9ETly/qXbNK5IPo0=; b=D4U0JoD06OQ2kRMi1bKPY2/CuJ
 GD2msYt1bMGPadgbFRmPiiPGF1/3gx7pr6/DGWJMF2BsYvLzA3hpwlM6Ww0ueQm46nnyz8gVkLCI+
 rrYw7QKyMdsDaoYU7qED0nxCOay6VOaEzTELkRx3LYTG9M1MjfHcZhAGNdSDmVLEODEY=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nYeLL-0001XK-GF
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 01:38:53 +0000
Received: by mail-qt1-f177.google.com with SMTP id t7so11170301qta.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 27 Mar 2022 18:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=eRVimM/CbpiWSNvnFN5TSgMFECx9ETly/qXbNK5IPo0=;
 b=BsK0FQNd3Pe5IfDYDzvgRs8mmoqcuOnHIcdO75fkq7ujs5Z6t5NPmSUSn+TUuHtQlo
 yp+bTJ1lTJ4jkK4o/LSmw2rh8wmKXy1nbweOE0ZYHaUUhfWesMrJ/VdLfm1yRwXiHIRJ
 UWZZoMjAetOqPD9zrwZDPltGe1BGEQoc8yt3yVynCwmofsjuu6n57SWgPoce/P6cRe2u
 0kruZRBBsjOeUwKTbjJ+hyhRHjHuuxVpUp+QnrOpg5DsVSN1+2c0JEFaHiQvW7dBSGQJ
 A+aStgfS+fPICLgIqjl4rBMKuD4Vc7BMiQ9jRYr9moPhnT8tw1Lb+LAEGPgHjSPKBYKs
 0ddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=eRVimM/CbpiWSNvnFN5TSgMFECx9ETly/qXbNK5IPo0=;
 b=7jPmgP2+DrCXf3hREczgNiw3BBWj/60xz5soPxP+WrUGjJlz1S2C5z6ysNz+9OE2ri
 zkWK9wCxJaqgs3HOujsHGmTJ4Qx4IRTrYi55Tk7LlqY6Le4Nem6qADmAkIvzrCkl24GY
 tPaaJ9J7pw8P9nYujabL38XZ5PHdPJHxsPepMecYrhSGlMl62Q8BYdF8B8H/um20NWKM
 d9o8KhNpjalqzCUts/OEXHoBhmp+CwqevwAE/K2DIOIWj3nwTUjGfxZ1tEUr3ZCEVemk
 XNALaorfTiVlfXUOvs8QQbQ4g1GyYE16+sl7XZF5CCfyu922K7oTdE0yC/V1Q9FioGM0
 kpJQ==
X-Gm-Message-State: AOAM533MxeHQgy+fsVOOGlze9QnRiBVF86R6Em68DzP6DaIeGOssE65e
 fxQnqvq0UC+0N/aFTa2eg2A6kdXL4Q==
X-Google-Smtp-Source: ABdhPJz8fngwQ/xG+IMm80gH2TCqQ5pMeJXfiv3AGjpMsPQewfjNH2hNRmdG0jkuk8/0IkPXb+Qwrg==
X-Received: by 2002:a05:622a:134b:b0:2eb:843e:47a8 with SMTP id
 w11-20020a05622a134b00b002eb843e47a8mr1456650qtk.400.1648431525619; 
 Sun, 27 Mar 2022 18:38:45 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 u11-20020a05622a14cb00b002e1fd9dce3dsm11795784qtx.60.2022.03.27.18.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Mar 2022 18:38:45 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:5dff:4364:311c:ff])
 by serve.minyard.net (Postfix) with ESMTPSA id C85C61817BD;
 Mon, 28 Mar 2022 01:38:43 +0000 (UTC)
Date: Sun, 27 Mar 2022 20:38:42 -0500
From: Corey Minyard <minyard@acm.org>
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Message-ID: <20220328013842.GN3457@minyard.net>
References: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 28, 2022 at 12:47:41AM +0800,
 Chen Guanqiao wrote:
 > At present, a scenario has been found that there are too many ipmi messages
 in a > short period of time, and a large number of users an [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nYeLL-0001XK-GF
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

On Mon, Mar 28, 2022 at 12:47:41AM +0800, Chen Guanqiao wrote:
> At present, a scenario has been found that there are too many ipmi messages in a
> short period of time, and a large number of users and messages are blocked in
> the ipmi modules, resulting in a large amount of system memory being occupied by
> ipmi, and ipmi communication always fails.
> 
> Frequent calls ipmi and failure of hardware communication will cause this
> exception. And ipmi has no way to detect and perceive this problem, therefore
> it is impossible to located and perceived online.

Hmm.  So you have an application that just keeps sending IPMI messages
and not waiting for responses?  I think the first order of business
would be to fix your applications to not do that.

The ipmi driver will eventually clean things out, but the timeouts are
pretty long.  In the 5 second range per message.

However, as you say, there are no limits on users or messages, and that
is perhaps a problem.  I mean, only root can send IPMI message, and root
can do a lot more harm than that.  But it's probably bad in principle.
Nobody has ever reported this problem before.

Anyway, a better solution for the kernel side of things, I think, would
be to add limits on the number of users and the number of messages per
user.  That's more inline with what other kernel things do.  I know of
nothing else in the kernel that does what you are proposing.

Does that make sense?

-corey

> 
> This patch provides a method to view the current number of users and messages in
> ipmi, and introduce a simple interface to clear the message queue.
> 
> Chen Guanqiao (3):
>   ipmi: Get the number of user through sysfs
>   ipmi: Get the number of message through sysfs
>   ipmi: add a interface to clean message queue in sysfs
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 159 ++++++++++++++++++++++++++++
>  1 file changed, 159 insertions(+)
> 
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
