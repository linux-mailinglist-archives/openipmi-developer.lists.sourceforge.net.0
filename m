Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9F4CDDDDD
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Dec 2025 15:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6opEhgwoRBKi9TiD6Fop5y1DjIgX00Nhqjc3+xeLLBU=; b=UblVWgrKIzAVUG8s8AV1yY0Tkl
	8plD4VSJnTFw5mVSejO6o3JDJE7AlRhH2dEAH7E/HMThfFBxJz49moPlsqqxnpgjVhicwGjccf5U0
	D2NfMEYBKAleeoLDWNDwjUfxA8IBYV3gz0roDwHncYzrPp00YMO1KJRXaOQyVOcBXtHw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vYmjK-0001qV-TA;
	Thu, 25 Dec 2025 14:54:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vYmjJ-0001qP-Nm
 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Dec 2025 14:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FyjGbxSEKFRKSdOhl1fCBfFEUUx7tM9xVkea9Y3mrL4=; b=QQHf3SOIPQ5KiZcL9meR7XUQhX
 K9Jq/RWgyY3PZAgMmm4aEefKEiLMA17ClvjlWc+T8ftGdIKTLKeO7D3cFT3MtTjn4XCNVOiLPKxSP
 JQVD7k3gU07bWDPjtLDRHdO/ak5wXtSWbR5PN3STNn/hjp2W5Cp5aLpDN5R1KaXFJJfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FyjGbxSEKFRKSdOhl1fCBfFEUUx7tM9xVkea9Y3mrL4=; b=Gt4hf/6QHDkdJHiejam0XizCDe
 PIOPL/0vGN7oKYOs5k4R6FM+I6Ap4C2Hmtjx9nvIuY+WyNyWUwDOhoEpyJ+rzscRPlFRsCCI2LUG7
 7ZY4ey7lhWGZhfxU0QFKuWjgkMdm0yP8BFzdULT+Km6anMdIPS9J+Vi4QLOdkPhMOGMc=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vYmjJ-0004vt-62 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Dec 2025 14:54:17 +0000
Received: by mail-qk1-f169.google.com with SMTP id
 af79cd13be357-8b602811a01so738041285a.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Dec 2025 06:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1766674446; x=1767279246; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FyjGbxSEKFRKSdOhl1fCBfFEUUx7tM9xVkea9Y3mrL4=;
 b=XjbzvDINeo7qi+or5NgzNfsmcGKt/mcW/KdB84mFCfk+ICb3p0cWRn2a4hPYw5vCsu
 P2zMNXWp8LAsbARdHPH0LEClMc+mUlPdAhLhTMmU/l6QedxcjMOiKDDnd7ItTaAcTqP3
 LIuGlW6rjJQovk/bvkztpVNBpf6FbipZnCZatK7ixaa5p+2WnKUftNkJIHAT5Z7QguuA
 kremPSAe7TZhRaGXHg0z0aBbP9FmBIoKXYVCqG7jEyYkJPztCiv/d27oHke0i8aZ1TMk
 +Y859cfOCRukISFmn4SMoR9MuhZwwg9v+6DJaRyUrFl8a3oqDfHDolU/5ehmeeCcc4nW
 iNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766674446; x=1767279246;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=FyjGbxSEKFRKSdOhl1fCBfFEUUx7tM9xVkea9Y3mrL4=;
 b=ChIWImiJp3Z8NIWCXTvbnBNudWEXmlm2fKSoPIKecWtu/CVlgvmSHyWPmLSeh/V/H5
 9eRleqeVCGoCgoxY+hhNldOVpb0ZNJCK87SqM+1snvsxHwXanV6QaLY9Yu16xqRTTBKZ
 rsUXRXXBnb8bFrl7MFywt434BpHvKp2bMvDReSAYzeP+61r0IEG0cl/xxOqTZqXTWgBa
 7SOdCmuB71UZmTPX7mWMutWzhLjV43TYXCbE8aKP43krfSR2Z8RSsrWD8sDgIaFLYhZO
 03c4LlG0N0L8zSJaGuhys/14i2dCXnydEh/cu7Ccj2ygRpPM4+Jef8IMzy43+fEV7JxH
 b7AA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAb+e94PAblyTP7lFIFIvgc9eXYEyKxfaKs1P1NkehKUpg3MTJAAewW/17C2YlgdiE/3fFZqDqoAaBdtvAsH1Bg6U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy2ruui6ysgsUEE+yy4zwS7m7Nrghm6pH1L0qIRwmR/A4PhQGXP
 MJ9yiF3+Il9eH1Pek366zgEhQ5Wt/ajeaw24+EQlvI/FuMaGIvNzbHaYZ31Aw8yBu4G4cpiVL4I
 aKEy8jYg=
X-Gm-Gg: AY/fxX4RlaEnxPcvBT1GXwmRXFXJG0WmfIr72yYOEWfCbSQQOhKethAvAy1lNFv48IP
 7wWf9zZAfpX6aKPG0SE3oM1mV6Yos8QLtRe10t23H+9IJmD7Qmdar1SEflKuy8vT5WkdRuViBxG
 bkSaLgjxv4k0K1q+17BYRTb6q6UYEpuhPhmNKi9DjJBO6zIFsVTEqdhkRyCP0nFBV7d7F7JkaWo
 Vfvg97OYhx1mAgOGfVjHsvXpm3UKgvMhQxam8v7hzvOrVZat49e+l92gkN6mTuThUa/AXEGv6QC
 3zqRiGkJcebIqf5VadL9JIP5hoJotddaLv6EJBH2KdAEZPSfgI4JSMYrDzjQhzencdQdXHzEw06
 uTilw4swtux2jNcEhZOJDT8R2n+C3tTpuHXZlUZqdkYfKXuyxSdbuXl1phgeOgkOQXzIW/o2N+H
 z3MlZNO7pyOeAb
X-Google-Smtp-Source: AGHT+IHq/HII7KN4ZM4/mdYV9j3XHwJ87+/D/0t+YfkekNTNAMJ+pP5SEsQB0rX1lXZ5FKBnLzw3DQ==
X-Received: by 2002:a05:6808:1b25:b0:455:f286:707e with SMTP id
 5614622812f47-457b21bcde4mr9211923b6e.63.1766674094990; 
 Thu, 25 Dec 2025 06:48:14 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f542:2e3e:ddd:4ad5])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-457b3cc114fsm9786352b6e.11.2025.12.25.06.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 06:48:14 -0800 (PST)
Date: Thu, 25 Dec 2025 08:48:08 -0600
From: Corey Minyard <corey@minyard.net>
To: Marco Crivellari <marco.crivellari@suse.com>
Message-ID: <aU1OqA1b9URni1-k@mail.minyard.net>
References: <20251224161301.135382-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251224161301.135382-1-marco.crivellari@suse.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 24, 2025 at 05:13:01PM +0100, Marco Crivellari
 wrote: > This patch continues the effort to refactor workqueue APIs, which
 has begun > with the changes introducing new workqueues and a new [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
X-Headers-End: 1vYmjJ-0004vt-62
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Replace use of system_wq
 with system_percpu_wq
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
Cc: Michal Hocko <mhocko@suse.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>, linux-kernel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Frederic Weisbecker <frederic@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 24, 2025 at 05:13:01PM +0100, Marco Crivellari wrote:
> This patch continues the effort to refactor workqueue APIs, which has begun
> with the changes introducing new workqueues and a new alloc_workqueue flag:
> 
>    commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
>    commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")
> 
> The point of the refactoring is to eventually alter the default behavior of
> workqueues to become unbound by default so that their workload placement is
> optimized by the scheduler.
> 
> Before that to happen after a careful review and conversion of each individual
> case, workqueue users must be converted to the better named new workqueues with
> no intended behaviour changes:
> 
>    system_wq -> system_percpu_wq
>    system_unbound_wq -> system_dfl_wq
> 
> This way the old obsolete workqueues (system_wq, system_unbound_wq) can be
> removed in the future.

This looks good to me.

Acked-by: Corey Minyard <corey@minyard.net>

> 
> Suggested-by: Tejun Heo <tj@kernel.org>
> Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 3f48fc6ab596..ebdc8f683981 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -973,7 +973,7 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>  		mutex_lock(&intf->user_msgs_mutex);
>  		list_add_tail(&msg->link, &intf->user_msgs);
>  		mutex_unlock(&intf->user_msgs_mutex);
> -		queue_work(system_wq, &intf->smi_work);
> +		queue_work(system_percpu_wq, &intf->smi_work);
>  	}
>  
>  	return rv;
> @@ -4935,7 +4935,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  	if (run_to_completion)
>  		smi_work(&intf->smi_work);
>  	else
> -		queue_work(system_wq, &intf->smi_work);
> +		queue_work(system_percpu_wq, &intf->smi_work);
>  }
>  EXPORT_SYMBOL(ipmi_smi_msg_received);
>  
> @@ -4945,7 +4945,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
>  		return;
>  
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
> -	queue_work(system_wq, &intf->smi_work);
> +	queue_work(system_percpu_wq, &intf->smi_work);
>  }
>  EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
>  
> @@ -5115,7 +5115,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
>  				       flags);
>  	}
>  
> -	queue_work(system_wq, &intf->smi_work);
> +	queue_work(system_percpu_wq, &intf->smi_work);
>  
>  	return need_timer;
>  }
> @@ -5171,7 +5171,7 @@ static void ipmi_timeout(struct timer_list *unused)
>  	if (atomic_read(&stop_operation))
>  		return;
>  
> -	queue_work(system_wq, &ipmi_timer_work);
> +	queue_work(system_percpu_wq, &ipmi_timer_work);
>  }
>  
>  static void need_waiter(struct ipmi_smi *intf)
> -- 
> 2.52.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
