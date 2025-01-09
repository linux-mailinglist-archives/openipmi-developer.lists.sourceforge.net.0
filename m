Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F59AA07C3B
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 16:45:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVujF-0003y6-Ik;
	Thu, 09 Jan 2025 15:45:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tVujE-0003xz-51
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 15:45:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cgTp2x21PamB5G5tjbV3jPSQRWSgTUkiJmrzV93coW4=; b=KQcrO4JMy8Gc9rxahZKpQE/SI1
 oAX//8YUtD7PT2WluXaUbmxwzPu4sA8uYtg3N0tBUcpJHYeIqnD3g90m2dzD1w4O+RP9CI2T9egPg
 Jvbi6UeEOK7fBi0U5WQt/bhEH0q9NWGV7MIQtFRpq7aM+z0NfaCjHE9QpzZJCGoLVUYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cgTp2x21PamB5G5tjbV3jPSQRWSgTUkiJmrzV93coW4=; b=Zu0WR5azHo+YzE6+GTCbH3ajfG
 tW0EexTdPVu9Q5uSJHzPknwoYurxM0bhYsB77ODhwAZ1snQvk5jIallqtbfIq2yoo9WZ6nvhVXXzt
 v2YJmg7IptcVPQbyoxml9hkG2JUCn+ZbEr2MAqGxVb038S61SnHuHNsUv0500rl2Wamc=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tVujC-0004za-Ni for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 15:45:47 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-721d213e2aeso270506a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Jan 2025 07:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1736437536; x=1737042336;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cgTp2x21PamB5G5tjbV3jPSQRWSgTUkiJmrzV93coW4=;
 b=R8zSON0HEnkqzD/dvfJzpKcieVfVnrHSKBjrr9qULxzj6kqYWC0WvQtt7hlrNWbnH0
 kR/ycZ99odRtggib78DAimlRUdHKwylkpZBe8Dngu4IpkHHM4Ii8Yf2JtdMH8/ERWGN+
 B9G3OkvMkMKZhXP9Wp9wTl0EZWcO6yfqIJbV2wN0cGmW4wJANE1IuWPXQyntCjgwzNFd
 DZc+Stp0Py5mflZ74IsfP1VbTlqAAnWHs9m94OsQi3LmhdYWvOEF2fT6VFwgdyug1Hnn
 LsybCM+k4OYpUpyHiPSgE8fR/Q0GKqZez/IvxFzZ4MTiIDtCtuyw5QmWPU4ZJaJ1mMNB
 C5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736437536; x=1737042336;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cgTp2x21PamB5G5tjbV3jPSQRWSgTUkiJmrzV93coW4=;
 b=r6zmdqQP+D6/rrYZHhpTuWvR9v5jkc0GykR8SVo5CgWEZstFA6cYrwCNmdtUX9dv0c
 KfeZQ6kmVF3ZCilRFvoFzku4nkLsXw2ewAFhUzT3yu9XKgq6j8E6LXwY5pYcFs1kAFrW
 OQvXWfPoyKiRz0tPHjTV5/Ib2COGc8fV77yImN3k8rNK1rZqNmA4cYFgmjyaOfwjsom1
 9UHl9yPQPw4DUkGWF89PeKAHh8/jcQ1Zxjr4FcRWT7EDU1U1M/S+8He/523YlbnSDfJZ
 i+AqeOXmurNh+tmJiIRwzaSqhA1a9lMMM9VWAAz8yHNFj/XY6QQlK6alwLS8vgknBjI3
 AAHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNYSEeGa+loTLtfcymeWHbydYfleE7waw661KH1wR8lhRZY9w/bCdJNO0/sUVB54ONHJJQJz+AMT18V6xSCGjRciY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yykn43vKB27yZxktlxcUgq5FGhBvqDzKvvnnSAUDojCzZFFdtKk
 JPX+6JWriz4eSJf5rEaNh+v5EASONU/ZxHwpY3zzVNAD1kniJ1wlb06GyySCkcc=
X-Gm-Gg: ASbGncvOUtuHjxhrDiPdIEwZ31t6w2WjVS6CcEBbdshLkFvgOKikHaJBiPuZ5w4CqGi
 Fyxk11EGKlA66DNUQ9Zv5twC00S5HtleHcs/mPrU6cJMDj22yWycKVQWdqtgeKAa4HBGgNcYM8g
 8uHYhF0tDoxuI3l4sH4K1gptFxCXZHZ9LUUW7x1pjPN0QN3uVNzpZTUQ17xOmlJEeQUi0Egk+R1
 oIrZxdYtPnAAkNbFQxf9zAyje7kgoKmMI/4KKEWRz9QsrIyUbx1DOB971tk
X-Google-Smtp-Source: AGHT+IHELUnxP9ZvL+e2Ztemz39I9ORoPYZLTVwEa+XG73J5uz7w7yM0cuXu9KZqTaUsGk+1/+jmGA==
X-Received: by 2002:a05:6830:6610:b0:716:a95d:9ef with SMTP id
 46e09a7af769-721e2e000d6mr4949630a34.2.1736437534534; 
 Thu, 09 Jan 2025 07:45:34 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:9076:47eb:1e0a:16fb])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-5f882625f0esm386258eaf.9.2025.01.09.07.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 07:45:34 -0800 (PST)
Date: Thu, 9 Jan 2025 09:45:27 -0600
From: Corey Minyard <corey@minyard.net>
To: Joel Granados <joel.granados@kernel.org>
Message-ID: <Z3_vF3I453flXoZv@mail.minyard.net>
References: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 09, 2025 at 02:16:39PM +0100,
 Joel Granados wrote:
 > Add the const qualifier to all the ctl_tables in the tree except the >
 ones in ./net dir. The "net" sysctl code is special as it modifi [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.44 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.44 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tVujC-0004za-Ni
Subject: Re: [Openipmi-developer] [PATCH] treewide: const qualify ctl_tables
 where applicable
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
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Kees Cook <kees@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org, kexec@lists.infradead.org,
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 09, 2025 at 02:16:39PM +0100, Joel Granados wrote:
> Add the const qualifier to all the ctl_tables in the tree except the
> ones in ./net dir. The "net" sysctl code is special as it modifies the
> arrays before passing it on to the registration function.
> 
...
> diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
> index 941d2dcc8c9d..de84f59468a9 100644
> --- a/drivers/char/ipmi/ipmi_poweroff.c
> +++ b/drivers/char/ipmi/ipmi_poweroff.c
> @@ -650,7 +650,7 @@ static struct ipmi_smi_watcher smi_watcher = {
>  #ifdef CONFIG_PROC_FS
>  #include <linux/sysctl.h>
>  
> -static struct ctl_table ipmi_table[] = {
> +static const struct ctl_table ipmi_table[] = {
>  	{ .procname	= "poweroff_powercycle",
>  	  .data		= &poweroff_powercycle,
>  	  .maxlen	= sizeof(poweroff_powercycle),

For the IPMI portion:

Acked-by: Corey Minyard <cminyard@mvista.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
