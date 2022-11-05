Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65761DDCD
	for <lists+openipmi-developer@lfdr.de>; Sat,  5 Nov 2022 20:31:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orOtO-0002Qh-6g;
	Sat, 05 Nov 2022 19:31:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1orOtK-0002QV-GV;
 Sat, 05 Nov 2022 19:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=; b=h0+UKoCBCJtH6n6uzRBk/YpE/l
 9lwYOuPWe2IYjyZLf9TXdiJAQ6P44klqB8U8FMVMs9Lk9Eaph1bY4UwMpY9hKM42Q8m+YN9Tlpf3R
 HKcHmb4/66l7Pt2+PeXJ/ovzqXvIxU6IU1OuumyMDFpti6L5s+XicAkThG8C314jFd9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=; b=cPEsi6neT5O6g3LVLktsTIfsFk
 y8cHaB9DhESNDcg87AQuuc1C7pzmIkSajhQRT8AOLpB5QWlVMVsfDm/SAaYf0hkK+P5sK6RflOiEu
 ghZ9/v+jSrin8LS7sYRlApUHCYldOoZ2a2DAHu4rtaRqrYF0qrHd9PxCMu0dEnTfVjbs=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orOtG-0004Ue-2l; Sat, 05 Nov 2022 19:31:41 +0000
Received: by mail-oi1-f174.google.com with SMTP id s206so8464104oie.3;
 Sat, 05 Nov 2022 12:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=;
 b=jURw19XL/xOvCrYwmv2aWUKdeAoWjP9YO+FTg9LO7kNLGP2qrxnNI/DeaM/hhYlqsP
 YdQYptnzjKsYbbyAKOY5T5QWBhSSLuRj9tx/h3x3Iolz6OENad9xOgpnNTl3bQfF4abr
 IGnRZ+gwoVhjhy8eDyzb76gdYWeTNG8HbYJzf+upnNf3q7GfCqhXHTbMnctQM+lT4ISN
 LgN+zILvYp/x3cxyWSBN67VcIOLSthpIiMe3XVQLxJ5DNQbV3DpA0r2y4Xi6Om/6kI/T
 +bTGJHJtUOpMMkvOkxDlr0Z5JMnZYu43sVpFgzYDCR/HFlqDOFJ8Z5bQFtUlln66Rbqg
 ggdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=;
 b=FKrYpUbTnvRfLg+s9/R+dkL6oyQ6GiRe1YlJxAuHAelmjjmMtnHrACa8YgSYqRPwD8
 zE1Xb3cJuceiYN7/dzzkYqHeAn1N7kch/vQSA+hVmZk6Tr/VJSQuxeddcJO26oW/zHii
 QHOnUjO2hjNjG+VcahSRi79DOi0I/E19s3eiSkLd7Tj/wiI1orbHpwAdDD+9HOFwbhTy
 6P5ovU+TBijNpgVpvKqG5pzDc65dOytiHdGCuVmlPu7LXHP8fa4kqi2f1HIqAaqMPpDV
 0OY+NX8m/IrVcIG0i/EV8eZ5welnCeaMUDbQO3ki8E2bJ6lptZ22eMmSm1QDky4uysMr
 6AXw==
X-Gm-Message-State: ACrzQf0nIDqisQ9gIkrctiW7JYmQxN+9drr2igXFvR/ZFTMHmQNyofWu
 ZoaVezb91zUbElsgVMeW0EvV1yKk6Vk=
X-Google-Smtp-Source: AMsMyM7VRYR4ja1354r4nOb4sGsFC9SF+e+FSsFCXSIKNyBk3irIl03bXoaveyKZeBBPlTvKUXlEMQ==
X-Received: by 2002:a05:6808:1708:b0:351:728b:3a03 with SMTP id
 bc8-20020a056808170800b00351728b3a03mr22106906oib.275.1667676692450; 
 Sat, 05 Nov 2022 12:31:32 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 l14-20020a4ac60e000000b00499499a8e18sm834040ooq.5.2022.11.05.12.31.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Nov 2022 12:31:31 -0700 (PDT)
Date: Sat, 5 Nov 2022 12:31:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221105193129.GA1487775@roeck-us.net>
References: <20221105060024.598488967@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105060024.598488967@goodmis.org>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 05, 2022 at 02:00:24AM -0400,
 Steven Rostedt wrote:
 > > Back in April, I posted an RFC patch set to help mitigate a common issue
 > where a timer gets armed just before it is freed, and whe [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1orOtG-0004Ue-2l
Subject: Re: [Openipmi-developer] [PATCH v4a 00/38] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Nov 05, 2022 at 02:00:24AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> The last version of that patch set is here:
> 
>   https://lore.kernel.org/all/20221104054053.431922658@goodmis.org/
> 
> I'm calling this version 4a as it only has obvious changes were the timer that
> is being shutdown is in the same function where it will be freed or released,
> as this series should be "safe" for adding. I'll be calling the other patches
> 4b for the next merge window.
> 

For the series, as far as my testbed goes:

Build results:
	total: 152 pass: 152 fail: 0
Qemu test results:
	total: 500 pass: 500 fail: 0

No runtime crashes or warnings observed.

Tested-by: Guenter Roeck <linux@roeck-us.net>

Guenter



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
