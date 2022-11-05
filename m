Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7956061DD47
	for <lists+openipmi-developer@lfdr.de>; Sat,  5 Nov 2022 19:36:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orO1h-00074W-El;
	Sat, 05 Nov 2022 18:36:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1orO1d-00074Q-Eu
 for openipmi-developer@lists.sourceforge.net;
 Sat, 05 Nov 2022 18:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=; b=Ce+anZ6OLCDTJanncVjflC738f
 PcQRFZXuLbhrpDZKfvlTKQn3ur5x6c9WSPX2H+1TDW9GM/Y6552Yrw0AHrjKhDzabeFqOURC4xc3p
 9I0itIDvUv9kxLIZmW6YSe2mtN8oiCZEQGXlzfCdwQZ/3/Qd/3Vi22YXOZ/aYFqhEvCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=; b=lBp6FdhP3XNbZ1gGYxQV7QLvsp
 bw0ff8+mzQuwG3f30wDYbR/mwl6JMT18zR8yKpnPUdWokSfCXS5FerAkC/5Gz3AKGRdPfLcrhzc5M
 xupQNs7W5cl2xsfsCcJjpOGPEptqlvgNAhJ7RNT/wFZLfXOIJ/8Tnx5e1e76r/G3Xi+Q=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orO1Z-00DK0o-LN for openipmi-developer@lists.sourceforge.net;
 Sat, 05 Nov 2022 18:36:13 +0000
Received: by mail-qk1-f179.google.com with SMTP id i9so5122780qki.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 05 Nov 2022 11:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=;
 b=DONWs6/FiwPtVJ4h9P9G1D+xI2OZ4sOZ++B4h9lOUr90grPUMADKKtOkyMNK85AsEf
 yHs4XotTZQfbZFXiKO1vIPQf4cjf9p2EEuLbIK2DwoG1VitJXDxI/Fg0k/P20CNhLtpT
 5yTAOviUwyDAlllMzqQFpJUoXjW0aoAYitY3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=;
 b=G+WNY3irhAmxbePUuqTByIafAUrkdHwXtMGlTFuvlImUdi1u23wHaNR8SbrB/sQ1Og
 6SPiCvD67pJi+7ogEYiMFBJN4iP+4mctjLDewMv6uYcSqRwp6RuKtdneAFQ7RS3wSb7a
 LHp9s9M2KC183/nb4vAr7x0hpwZAbFS3CSkadNWouG3UvJMA/zytrNaBnn59WvwvOgP2
 w5frksa5pxZxmXgzfrUE3yIWgQwabz99tpc/ucDoclwHbDKDAmEQ8ohfYFvTCWEMdTaU
 1FBX7piqAXn7pcVSSxfnBuxLJqqssbDnsTY3TRDHhh31+qcUNkx7VFCHAsPrRHHX1IRQ
 TTMg==
X-Gm-Message-State: ACrzQf1Dsu0UYsa1dLKMMmD4iVsDM1gU1jNWnyrmLly6Fy1aw1zntIHM
 nXoYzOvm7IJXkGFAepoRhiQ3mkalOH2N4A==
X-Google-Smtp-Source: AMsMyM7vvYcKQmMz6VKCIK+REv+LwA5OE86/mQ2DtyLNuK41yCyrkKJOaECxLcW9CKyKHUv07qAMvw==
X-Received: by 2002:a05:620a:4014:b0:6fa:b643:8fd5 with SMTP id
 h20-20020a05620a401400b006fab6438fd5mr1647935qko.317.1667673363576; 
 Sat, 05 Nov 2022 11:36:03 -0700 (PDT)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com.
 [209.85.219.180]) by smtp.gmail.com with ESMTPSA id
 cq10-20020a05622a424a00b00397e97baa96sm2320859qtb.0.2022.11.05.11.36.03
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 11:36:03 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id 131so4918091ybl.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 05 Nov 2022 11:36:03 -0700 (PDT)
X-Received: by 2002:a25:bb02:0:b0:6ca:9345:b2ee with SMTP id
 z2-20020a25bb02000000b006ca9345b2eemr26793220ybg.362.1667672929161; Sat, 05
 Nov 2022 11:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
 <20221105140356.6a3da628@rorschach.local.home>
In-Reply-To: <20221105140356.6a3da628@rorschach.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 11:28:33 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjnASLkTdPd+wxto2RBQH+S9MUm4FrNPWvU87opFG5SKQ@mail.gmail.com>
Message-ID: <CAHk-=wjnASLkTdPd+wxto2RBQH+S9MUm4FrNPWvU87opFG5SKQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 5,
 2022 at 11:04 AM Steven Rostedt <rostedt@goodmis.org>
 wrote: > > Here's the changes I made after running the script Please. No.
 What part of "I don't want extra crud" was I unclear on? 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
X-Headers-End: 1orO1Z-00DK0o-LN
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
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Nov 5, 2022 at 11:04 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Here's the changes I made after running the script

Please. No.

What part of "I don't want extra crud" was I unclear on?

I'm not interested in converting everything. That's clearly a 6.,2
issue, possibly even longer considering how complicated the networking
side has been.

I'm not AT ALL interested in "oh, I then added my own small cleanups
on top to random files because I happened to notice them".

Repeat after me: "If the script didn't catch them, they weren't
trivially obvious".

And it does seem that right now the script itself is a bit too
generous, which is why it didn't notice that sometimes there wasn't a
kfree after all because of a goto around it. So clearly that "..."
doesn't really work, I think it accepts "_any_ path leads to the
second situation" rather than "_all_ paths lead to the second
situation".

But yeah, my coccinelle-foo is very weak too, and maybe there's no
pattern for "no flow control".

I would also like the coccinelle script to notice the "timer is used
afterwards", so that it does *not* modify that case that does

                del_timer(&dch->timer);
                dch->timer.function = NULL;

since now the timer is modified in between the del_timer() and the kfree.

Again, that timer modification is then made pointless by changing the
del_timer() to a "timer_shutdown()", but at that point it is no longer
a "so obvious non-semantic change that it should be scripted". At that
point it's a manual thing.

So I think the "..." in your script should be "no flow control, and no
access to the timer", but do not know how to do that in coccinelle.

Julia?

And this thread has way too many participants, I suspect some email
systems will just mark it as spam as a result. Which is partly *why* I
would like to get rid of noisy changes that really don't matter - but
I would like it to be truly mindlessly obvious that there are *zero*
questions about it, and absolutely no manual intervention because the
patch is so strict that it's just unquestionably correct.

              Linus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
