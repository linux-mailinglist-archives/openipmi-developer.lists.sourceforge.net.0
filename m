Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3125172D6
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 May 2022 17:38:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlY7s-0002hq-0l; Mon, 02 May 2022 15:38:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <f.fainelli@gmail.com>) id 1nlY7r-0002hi-0t
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3glF1N1lkKRH3me6ZqnttV9WJnWFWFCivroWGr8uPw=; b=CGxbSVe+M9eQcVqUoV+yqyb9jn
 XAjX70JIxtr6CFRypNCZrnN/M0rVtzPJA4DjVksMH+NRHsr7Wqxtm6o33GpCimbpMd0nbCON6lIt6
 05hNid8ijLLqhI4zmB3V1bWU9akflO5HYbV98egxtyPn3NSzJfF7OX2OfD8YMdxUg1eY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G3glF1N1lkKRH3me6ZqnttV9WJnWFWFCivroWGr8uPw=; b=m3h6LuOXIkt/6jaD0xUmJFnbBR
 Rj30gn8gior2wrRb/dSKC16wYQW2hthYhzXugoceYFyRjfetYiukNuN8FSswg9GEhEGvyztJjCsxW
 6BPXb/LhbMtF8bUoqQIcfXfFrVS4nyxM5UVLkv2P4q05h/JnZYN9ZnjObaM6Uhm0DQIo=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nlY7p-0000co-Db
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:38:13 +0000
Received: by mail-pl1-f172.google.com with SMTP id n14so5858966plf.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 May 2022 08:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=G3glF1N1lkKRH3me6ZqnttV9WJnWFWFCivroWGr8uPw=;
 b=jnlfZk0MfWr19qnX7NNM7gjFbPrAaWIfsyMT/a2rh5ffB/v2pJfbjyvAq97gGIe7rG
 uTUMZLa+nH4Wi+FN1pN2qcbvqHIR7otQfoQlalMkw87IR+nh4GjHlRC2yY+aj07x7Zne
 zGxtELORRMhqCmhbzrZiK6h4L9mSjjEbD0e/BNWv1R3qQVzAWwb6BmkzUoGpIqPCgA0+
 2ObdH2Pg4hawFfFic1Il4G3F/+ejKXGEvbg5eg2rTiwMZw7T8927WOyZTHdoi9Cab9u+
 ja/WP8lvKP5PRcbOA34iZHYDbBB8sQnBVMJ+5O9kafsYw33rMK6sYehTkd+7FNKb5q1e
 OVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=G3glF1N1lkKRH3me6ZqnttV9WJnWFWFCivroWGr8uPw=;
 b=NILz/hWrACj4ekhP0owhV1D7MEclmtsJZ/pnMyquIDZ9BD5HHyDy4z1NHAO5jTVzGG
 grxl8j35SV+X/HFmuHmsLs2lci5ini4gXS4wpBewM8G5JN5Vpru7MLuDFAL7vg8uPCPH
 0cDpFvDJEC2hFneSCn7uz5jApg5skMSaXHfhRGxsIh2FAmND5GsxC8MjXaunVfz+0Zr4
 FJ4ONqopWYTRIE3o7YqPgmgJDzvphYLGytUkYMoh23inHWPvphJv7Hx37yrSfAH1fu4e
 qpJIESnGBTeQzmJX64ig8ZwlkqmvJeoTcyMvuZE7hGIHN5taJbnVWLaoXhUhdYV4vNkP
 OEAA==
X-Gm-Message-State: AOAM532UV++XXI3uKkYp3GMYk228/oNvmOgSwG/8pTqX/vNrOjvun3ii
 4KLsi6UMyeSLheJZ6lvA4BA=
X-Google-Smtp-Source: ABdhPJz2mcdlrFcmvMvPOd4zB8ruKzEKevBlh0oNjAFvQiI4OOjKtV9AXzvbEK94SOMfNeMR9xysnA==
X-Received: by 2002:a17:903:230f:b0:15e:6e55:3230 with SMTP id
 d15-20020a170903230f00b0015e6e553230mr12264443plh.35.1651505887371; 
 Mon, 02 May 2022 08:38:07 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 ba1-20020a170902720100b0015e8d4eb1e6sm4806927plb.48.2022.05.02.08.38.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 May 2022 08:38:06 -0700 (PDT)
Message-ID: <eaf3a893-00dd-8717-202e-911b395670e1@gmail.com>
Date: Mon, 2 May 2022 08:38:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-16-gpiccoli@igalia.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220427224924.592546-16-gpiccoli@igalia.com>
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/27/2022 3:49 PM,
 Guilherme G. Piccoli wrote: > This patch
 improves the panic/die notifiers in this driver by > making use of a passed
 "id" instead of comparing pointer > address; also, it removes [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlY7p-0000co-Db
Subject: Re: [Openipmi-developer] [PATCH 15/30] bus: brcmstb_gisb: Clean-up
 panic/die notifiers
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 Brian Norris <computersforpeace@gmail.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 4/27/2022 3:49 PM, Guilherme G. Piccoli wrote:
> This patch improves the panic/die notifiers in this driver by
> making use of a passed "id" instead of comparing pointer
> address; also, it removes an useless prototype declaration
> and unnecessary header inclusion.
> 
> This is part of a panic notifiers refactor - this notifier in
> the future will be moved to a new list, that encompass the
> information notifiers only.
> 
> Fixes: 9eb60880d9a9 ("bus: brcmstb_gisb: add notifier handling")
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Not sure if the Fixes tag is warranted however as this is a clean up, 
and not really fixing a bug.
-- 
Florian


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
