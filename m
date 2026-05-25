Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LaRNZCCFGrhNwcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 May 2026 19:10:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D80565CD305
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 May 2026 19:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=feO735WQd4v+ffZL7eyRuI7Z5VqnNicufRT3tAKhcpo=; b=bC5lOru6CL+LUrJ2LDrKa8SwQ1
	vG8f8gtFYPlf1PoBzxejjM08dcexRuRIuo62yNwYpUobgFwHCIeE4TlLyFsN3EaTT0u+3JySHZiRA
	Fp4yRO0DZ0maOAAIqWeTOLvWimntqt0vPJT+Edbc3WoiQqhkgGlHVZZa4kFTzcuyf1f4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wRYoy-0005ul-LW;
	Mon, 25 May 2026 17:10:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <petr.pavlu@suse.com>) id 1wRYoh-0005t2-3D
 for openipmi-developer@lists.sourceforge.net;
 Mon, 25 May 2026 17:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=izugkSqOYsBmSyQ8jfD9m1SVj73YG14U78pRBc6Lai0=; b=jUayIDRgMYBJZwwXdFGumxq3Ln
 K8AY4AMEt5xMkLojmNX0G7j8WjD9M4CQFeph4qwx0pMKPzxYoNzsO5XmEbQhTrrswr+I3uLQRDw6q
 jsV501va+gWAb8CSeAfVcvoXtjT/SvHDl+yDIDQozx0fBZSP255Qt70ex4x8fvO728Y8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=izugkSqOYsBmSyQ8jfD9m1SVj73YG14U78pRBc6Lai0=; b=U49TrdVdCWPLkDW+KNm9NMXXA7
 z+Bta8Stoc22UyUeMmrCPUjqCzmqZk03/AO2KEyCuQcx82N7PrEMZlQ9mdCcLp02UF2lBxDo87Zq5
 fPmfXejh5FudWhZWx2J96WgyOudqIGosf7T7Uv9y5i07jAllfPS97XbITP7OaQ9kmdnc=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wRYoe-00064s-R7 for openipmi-developer@lists.sourceforge.net;
 Mon, 25 May 2026 17:10:15 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4903997fcb5so40910745e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 25 May 2026 10:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1779729007; x=1780333807; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=izugkSqOYsBmSyQ8jfD9m1SVj73YG14U78pRBc6Lai0=;
 b=DuYUgL2/KgdJLnCwdMyX53NREDUe5Iue2OkmKiMA2yNI9D6hGkFpe150dPl90t/ePG
 FjEHBkYCYw+gkypkcLKUUzDNioJ/h0tbhOZO7HZdzs2eKdOzScWrfJNjY+igUNJaWfzG
 qXks06AXmx09mO+R42zwqQqLsgM4G/FAckEvQs4ZGAPLMqtPZFUpXBGuJ55sNsm/WeTl
 8GKttzlricl5NNZYb9I1nNx9yR+6Lt+eWYukWlBjJKD3tyuD//DtXY186jcfndcgwE5Q
 qI2BCYtff+uBEdmqE/Pjv5+y5boM+bGm1ABf7CxlaO96JWuQGdMYlgg6sANGkLeA9V5Y
 oZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779729007; x=1780333807;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=izugkSqOYsBmSyQ8jfD9m1SVj73YG14U78pRBc6Lai0=;
 b=Gl0p//5AtfDxYQucywcgAp6RrRukwZgOPsp+ngxbxwzAE73N7nf/G8i4QzSLdMdaCf
 bDHQdYc7D48mgoO/v5YmOA6OICcG+AnBb5qPJxivCx/6oQyJGKMrOKf8Zah9DTFxPYek
 luYFLHnhW+PVcZz34XOn8Nc3tzcFRKXrR1RuxH7S+//kZoBtQGmbgsJNHAe4XSc5h+JG
 yPxsAOFsKO/V9Q4wbuxwmZTAYoGv4xPFxoa48V/5Lkq0kuuVHgcQAJGem9ouPJz2I7mA
 JW2vujLk/R8mhd0/MIv7lp1pgnQ45bUvJuKeVQz3B0ThiARGJi8PN/JdmePx+qCKWqJC
 3pqQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Fozoni+p6QhucCNDLy5OcfjlRhZdw5uUuiUD6M7JMJy9s8rxOXe6jIz2gwvMTGSGirEuZP62ZtQujS6hOlJ48RD8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzjZGZwTRMGET/ZG3dPTZKQ6Sz4SOQKNPR+Qam8jwU+XDyR4gpg
 bRvNyqS/hRC2WbvHmOvKKXp1Tuols38Ck3iBwbs3FOWakzqkrs+/7dOk0ynGGBRDyYw=
X-Gm-Gg: Acq92OHdIIss3HNe7Ge/AAsdgRt6vIGvG2xNyPQmA+CyZSlgxwEI39qZzBCzeZSrA6b
 k4rOCOyxJBFPJUdUSI8b/2j9HQrqJAhI9YFGCjKglgMPpxf+WvKQwFlldv/ET/6/W96aszK4WF6
 3fR2Koj+xOdBgbAIAkP+mFN5hOahUtXKRXfKNOVm7Uncv6A22RUQRf3RHZw6VJObLJhGs4QPbbo
 L7u0wJp4KQqsEr4HC6ALBptLvVuX3dkaG9M9gQs5k5coLvaaZ6zkbA8Doc/OGk7/YasylQlRMGA
 Ya4qS3t2ZOucVtFpvVwl1D4OlkKdfRXxBaTtynxO/xT7S4t6wWEKRoOEQuQTDi71LA9vCb0Kmz7
 80eC7revRz97ei1EeHuAuyHQZbqXrm8gs+ms+cX77btaYlSZEFMXTGN8dOWhyhzENg/8xK1rKlz
 VaR0sncMscDxglQidsCvrbDbKiHbewmCdu7U39+wSOUvuBqXv+w8L+7tFufBWyKSJwp78AyRJEx
 gDypFUQlOsLuyq9MHKxXx/qjVWiqFk15ukOIwt7gEEgwKsY7nbPSThUBc/AMgsxdLz+G2IiGvbg
 JSHfbhLSXY8Z/RA=
X-Received: by 2002:a05:600c:35cf:b0:490:44eb:c1e5 with SMTP id
 5b1f17b1804b1-49044ebc257mr277307095e9.31.1779729006482; 
 Mon, 25 May 2026 10:10:06 -0700 (PDT)
Received: from ?IPV6:2a00:1028:838d:271e:8e3b:4aff:fe4c:a100?
 (dynamic-2a00-1028-838d-271e-8e3b-4aff-fe4c-a100.ipv6.o2.cz.
 [2a00:1028:838d:271e:8e3b:4aff:fe4c:a100])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4904526c926sm456877405e9.1.2026.05.25.10.10.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2026 10:10:06 -0700 (PDT)
Message-ID: <a192eb5c-5d16-483d-862e-d937fa1b8269@suse.com>
Date: Mon, 25 May 2026 19:10:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kees Cook <kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
 <20260521133326.2465264-8-kees@kernel.org>
Content-Language: en-US
In-Reply-To: <20260521133326.2465264-8-kees@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/21/26 3:33 PM, Kees Cook wrote: > Convert the generic
 struct kernel_param_ops .get helpers in > kernel/params.c directly to the
 seq_buf signature, drop their legacy > "char *" form, and refresh p [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wRYoe-00064s-R7
Subject: Re: [Openipmi-developer] [PATCH 08/11] params: Convert generic
 kernel_param_ops .get helpers to seq_buf
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
From: Petr Pavlu via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Pavlu <petr.pavlu@suse.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-arch@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, James Morris <jmorris@namei.org>,
 kasan-dev@googlegroups.com, Tvrtko Ursulin <tursulin@ursulin.net>,
 linux-acpi@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 Georgia Garcia <georgia.garcia@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-media@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Simona Vetter <simona@ffwll.ch>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Paul Moore <paul@paul-moore.com>, Leon Romanovsky <leon@kernel.org>,
 Frank Li <Frank.Li@kernel.org>, Gabriel Somlo <somlo@cmu.edu>,
 Len Brown <lenb@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jason Baron <jbaron@akamai.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jim Cromie <jim.cromie@gmail.com>,
 Sean Christopherson <seanjc@google.com>, Thomas Gleixner <tglx@kernel.org>,
 usb-storage@lists.one-eyed-alien.net, linux-pci@vger.kernel.org,
 Jason Wang <jasowang@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "David E. Box" <david.e.box@linux.intel.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rdma@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, Marco Elver <elver@google.com>,
 intel-gfx@lists.freedesktop.org, Corey Minyard <corey@minyard.net>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Aaron Tomlin <atomlin@atomlin.com>, Hans de Goede <hansg@kernel.org>,
 kvm@vger.kernel.org, "Michael S. Tsirkin" <mst@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>,
 qemu-devel@nongnu.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, Daniel Gomez <da.gomez@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-scsi@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 linux-security-module@vger.kernel.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, linux-serial@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, Heiko Carstens <hca@linux.ibm.com>,
 apparmor@lists.ubuntu.com, virtualization@lists.linux.dev,
 linux-hardening@vger.kernel.org, Hannes Reinecke <hare@suse.de>,
 Benjamin Berg <benjamin.berg@intel.com>,
 Daniel Lezcano <daniel.lezcano@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Tiwei Bie <tiwei.btw@antgroup.com>, Dmitry Vyukov <dvyukov@google.com>,
 John Johansen <john.johansen@canonical.com>, netdev@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Johannes Berg <johannes@sipsolutions.net>,
 linuxppc-dev@lists.ozlabs.org, linux-modules@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-7.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,suse.com:s=google];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:kees@kernel.org,m:rafael@kernel.org,m:dri-devel@lists.freedesktop.org,m:pengpeng@iscas.ac.cn,m:srinivas.pandruvada@linux.intel.com,m:linux-arch@vger.kernel.org,m:bvanassche@acm.org,m:jgg@ziepe.ca,m:jmorris@namei.org,m:kasan-dev@googlegroups.com,m:tursulin@ursulin.net,m:linux-acpi@vger.kernel.org,m:stern@rowland.harvard.edu,m:linux-pm@vger.kernel.org,m:linux-um@lists.infradead.org,m:georgia.garcia@canonical.com,m:gregkh@linuxfoundation.org,m:linux-usb@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mcgrof@kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:linux-media@vger.kernel.org,m:lukasz.luba@arm.com,m:macro@orcam.me.uk,m:dave.hansen@linux.intel.com,m:James.Bottomley@HansenPartnership.com,m:simona@ffwll.ch,m:xuanzhuo@linux.alibaba.com,m:paul@paul-moore.com,m:leon@kernel.org,m:Frank.Li@kernel.org,m:somlo@cmu.edu,m:lenb@kernel.org,m:gor@linux.ibm.com,m:jani.nikula@linux.intel.com,m:jbaron@akamai.com,m:bhelgaas@google.com,m:jim.cromie
 @gmail.com,m:seanjc@google.com,m:tglx@kernel.org,m:usb-storage@lists.one-eyed-alien.net,m:linux-pci@vger.kernel.org,m:jasowang@redhat.com,m:joonas.lahtinen@linux.intel.com,m:laurent.pinchart@ideasonboard.com,m:david.e.box@linux.intel.com,m:jirislaby@kernel.org,m:linux-rdma@vger.kernel.org,m:samitolvanen@google.com,m:ilpo.jarvinen@linux.intel.com,m:serge@hallyn.com,m:elver@google.com,m:intel-gfx@lists.freedesktop.org,m:corey@minyard.net,m:bp@alien8.de,m:rodrigo.vivi@intel.com,m:openipmi-developer@lists.sourceforge.net,m:mchehab@kernel.org,m:martin.petersen@oracle.com,m:atomlin@atomlin.com,m:hansg@kernel.org,m:kvm@vger.kernel.org,m:mst@redhat.com,m:peterz@infradead.org,m:hpa@zytor.com,m:qemu-devel@nongnu.org,m:linux-mm@kvack.org,m:glider@google.com,m:da.gomez@kernel.org,m:airlied@gmail.com,m:anton.ivanov@cambridgegreys.com,m:linux-scsi@vger.kernel.org,m:richard@nod.at,m:x86@kernel.org,m:linux-security-module@vger.kernel.org,m:eperezma@redhat.com,m:mingo@redhat.com,m:linux-serial@vger.
 kernel.org,m:rui.zhang@intel.com,m:hca@linux.ibm.com,m:apparmor@lists.ubuntu.com,m:virtualization@lists.linux.dev,m:linux-hardening@vger.kernel.org,m:hare@suse.de,m:benjamin.berg@intel.com,m:daniel.lezcano@kernel.org,m:andriy.shevchenko@linux.intel.com,m:tiwei.btw@antgroup.com,m:dvyukov@google.com,m:john.johansen@canonical.com,m:netdev@vger.kernel.org,m:vkoul@kernel.org,m:dmaengine@vger.kernel.org,m:pbonzini@redhat.com,m:johannes@sipsolutions.net,m:linuxppc-dev@lists.ozlabs.org,m:linux-modules@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,iscas.ac.cn,linux.intel.com,vger.kernel.org,acm.org,ziepe.ca,namei.org,googlegroups.com,ursulin.net,rowland.harvard.edu,lists.infradead.org,canonical.com,linuxfoundation.org,linux-foundation.org,arm.com,orcam.me.uk,HansenPartnership.com,ffwll.ch,linux.alibaba.com,paul-moore.com,cmu.edu,linux.ibm.com,akamai.com,google.com,gmail.com,lists.one-eyed-alien.net,redhat.com,ideasonboard.com,hallyn.com,minyard.net,alien8.de,intel.com,lists.sourceforge.net,oracle.com,atomlin.com,infradead.org,zytor.com,nongnu.org,kvack.org,cambridgegreys.com,nod.at,lists.ubuntu.com,lists.linux.dev,suse.de,antgroup.com,sipsolutions.net,lists.ozlabs.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,suse.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[98];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[petr.pavlu@suse.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:mid,suse.com:replyto,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: D80565CD305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAzOjMzIFBNLCBLZWVzIENvb2sgd3JvdGU6Cj4gQ29udmVydCB0aGUgZ2VuZXJp
YyBzdHJ1Y3Qga2VybmVsX3BhcmFtX29wcyAuZ2V0IGhlbHBlcnMgaW4KPiBrZXJuZWwvcGFyYW1z
LmMgZGlyZWN0bHkgdG8gdGhlIHNlcV9idWYgc2lnbmF0dXJlLCBkcm9wIHRoZWlyIGxlZ2FjeQo+
ICJjaGFyICoiIGZvcm0sIGFuZCByZWZyZXNoIHByb3RvdHlwZXMgaW4gPGxpbnV4L21vZHVsZXBh
cmFtLmg+Ogo+IAo+ICAgcGFyYW1fZ2V0X2J5dGUvc2hvcnQvdXNob3J0L2ludC91aW50L2xvbmcv
dWxvbmcvdWxsb25nL2hleGludAo+ICAgcGFyYW1fZ2V0X2NoYXJwL2Jvb2wvaW52Ym9vbC9zdHJp
bmcKPiAgIHBhcmFtX2FycmF5X2dldAo+IAo+IFRoZSBTVEFOREFSRF9QQVJBTV9ERUYoKSBtYWNy
byBleHBhbmRzIHRvIGEgc2VxX2J1ZiBib2R5IGZvciBldmVyeQo+IG51bWVyaWMgaGVscGVyLiBw
YXJhbV9hcnJheV9nZXQoKSBub3cgd3JpdGVzIGVsZW1lbnQgb3V0cHV0IGRpcmVjdGx5Cj4gaW50
byB0aGUgcGFyZW50IHNlcV9idWYgd2hlbiB0aGUgZWxlbWVudCBvcHMgcHJvdmlkZSAuZ2V0OyBp
dCBvbmx5Cj4gYWxsb2NhdGVzIHRoZSBwZXItY2FsbCBQQUdFX1NJWkUgYm91bmNlIGJ1ZmZlciB3
aGVuIHRoZSBlbGVtZW50IG9wcwo+IHN0aWxsIHVzZSB0aGUgbGVnYWN5IC5nZXRfc3RyIHBhdGgu
IFRoZSBjb21tb24gInJld3JpdGUgdGhlIHByaW9yCj4gZWxlbWVudCdzIHRyYWlsaW5nIG5ld2xp
bmUgYXMgYSBjb21tYSIgc3RlcCBsaXZlcyBvdXRzaWRlIGJvdGgKPiBicmFuY2hlcyBzbyB0aGUg
dHdvIHBhdGhzIHNoYXJlIGl0Lgo+IAo+IFRoZSBub24tY29yZSBjaGFuZ2VzIGluIHRoaXMgY29t
bWl0IChhcmNoL3g4Ni9rdm0sIG1tL2tmZW5jZSwKPiBkcml2ZXJzL2RtYS9kbWF0ZXN0LCBzZWN1
cml0eS9hcHBhcm1vcikgYXJlIHRoZSBzbWFsbCBzZXQgb2YgY2FsbGVycyB0aGF0Cj4gZGlyZWN0
bHkgaW52b2tlIG9uZSBvZiB0aGUgY29udmVydGVkIGdlbmVyaWMgaGVscGVycyBmcm9tIHRoZWly
IG93biAuZ2V0Cj4gY2FsbGJhY2sgKGUuZy4gYW4gYXBwYXJtb3Igd3JhcHBlciB0aGF0IGFkZHMg
YSBjYXBhYmlsaXR5IGNoZWNrIGFuZCB0aGVuCj4gZGVsZWdhdGVzIHRvIHBhcmFtX2dldF9ib29s
KCkpLiBCZWNhdXNlIHRoZSBoZWxwZXJzJyBzaWduYXR1cmUgY2hhbmdlcwo+IGhlcmUsIHRoZXNl
IHdyYXBwZXJzIG11c3QgbW92ZSBpbiBsb2Nrc3RlcC4gRWFjaCBvZiB0aGVtIGlzIHVwZGF0ZWQK
PiB0byB0YWtlICJzdHJ1Y3Qgc2VxX2J1ZiAqIiBhbmQgcGFzcyBpdCB0aHJvdWdoOyBwYXJhbV9n
ZXRfZGVidWcoKSBpbgo+IGFwcGFybW9yIGFsc28gcHVsbHMgYWFfcHJpbnRfZGVidWdfcGFyYW1z
KCkgKGFuZCBpdHMgdmFsX21hc2tfdG9fc3RyKCkKPiBoZWxwZXIsIGluIHNlY3VyaXR5L2FwcGFy
bW9yL2xpYi5jKSBvdmVyIHRvIHNlcV9idWYsIHNpbmNlIHRoYXQgaXMgdGhlCj4gb25seSBjb25z
dW1lci4gTm8gb3RoZXIgYmVoYXZpb3VyYWwgY2hhbmdlIGlzIGludGVuZGVkLgo+IAo+IEN1c3Rv
bSAuZ2V0IGNhbGxiYWNrcyB0aGF0IGRvIG5vdCBkZWxlZ2F0ZSB0byBhIGdlbmVyaWMgaGVscGVy
IChhbmQKPiB0aGVyZWZvcmUgc3RpbGwgbWF0Y2ggdGhlIC5nZXRfc3RyIHNpZ25hdHVyZSkgYXJl
IHJvdXRlZCBhdXRvbWF0aWNhbGx5Cj4gdG8gdGhlIC5nZXRfc3RyIGZpZWxkIGJ5IHRoZSBERUZJ
TkVfS0VSTkVMX1BBUkFNX09QUyBfR2VuZXJpYyBkaXNwYXRjaGVyCj4gYW5kIGFyZSBkZWxpYmVy
YXRlbHkgbGVmdCBhbG9uZSBoZXJlLCB0byBiZSBjaGFuZ2VkIHNlcGFyYXRlbHkgd2l0aGluCj4g
dGhlaXIgcmVzcGVjdGl2ZSBzdWJzeXN0ZW1zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtlZXMgQ29v
ayA8a2Vlc0BrZXJuZWwub3JnPgo+IC0tLQo+IFsuLi5dCj4gQEAgLTQ1MywzNiArNDU3LDQ2IEBA
IHN0YXRpYyBpbnQgcGFyYW1fYXJyYXlfc2V0KGNvbnN0IGNoYXIgKnZhbCwgY29uc3Qgc3RydWN0
IGtlcm5lbF9wYXJhbSAqa3ApCj4gIAkJCSAgIGFyci0+bnVtID86ICZ0ZW1wX251bSk7Cj4gIH0K
PiAgCj4gLXN0YXRpYyBpbnQgcGFyYW1fYXJyYXlfZ2V0KGNoYXIgKmJ1ZmZlciwgY29uc3Qgc3Ry
dWN0IGtlcm5lbF9wYXJhbSAqa3ApCj4gK3N0YXRpYyBpbnQgcGFyYW1fYXJyYXlfZ2V0KHN0cnVj
dCBzZXFfYnVmICpzLCBjb25zdCBzdHJ1Y3Qga2VybmVsX3BhcmFtICprcCkKPiAgewo+IC0JaW50
IGksIG9mZiwgcmV0Owo+IC0JY2hhciAqZWxlbV9idWY7Cj4gIAljb25zdCBzdHJ1Y3Qga3BhcmFt
X2FycmF5ICphcnIgPSBrcC0+YXJyOwo+ICAJc3RydWN0IGtlcm5lbF9wYXJhbSBwID0gKmtwOwo+
ICsJY2hhciAqZWxlbV9idWYgPSBOVUxMOwo+ICsJaW50IGksIHJldCA9IDA7Cj4gIAo+IC0JZWxl
bV9idWYgPSBrbWFsbG9jKFBBR0VfU0laRSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIWVsZW1fYnVm
KQo+IC0JCXJldHVybiAtRU5PTUVNOwo+ICsJZm9yIChpID0gMDsgaSA8IChhcnItPm51bSA/ICph
cnItPm51bSA6IGFyci0+bWF4KTsgaSsrKSB7Cj4gKwkJc2l6ZV90IGJlZm9yZSA9IHMtPmxlbjsK
PiAgCj4gLQlmb3IgKGkgPSBvZmYgPSAwOyBpIDwgKGFyci0+bnVtID8gKmFyci0+bnVtIDogYXJy
LT5tYXgpOyBpKyspIHsKPiAgCQlwLmFyZyA9IGFyci0+ZWxlbSArIGFyci0+ZWxlbXNpemUgKiBp
Owo+ICAJCWNoZWNrX2twYXJhbV9sb2NrZWQocC5tb2QpOwo+IC0JCXJldCA9IGFyci0+b3BzLT5n
ZXRfc3RyKGVsZW1fYnVmLCAmcCk7Cj4gLQkJaWYgKHJldCA8IDApCj4gLQkJCWdvdG8gb3V0Owo+
IC0JCXJldCA9IG1pbihyZXQsIChpbnQpKFBBR0VfU0laRSAtIDEgLSBvZmYpKTsKPiAtCQlpZiAo
IXJldCkKPiArCj4gKwkJaWYgKGFyci0+b3BzLT5nZXQpIHsKPiArCQkJcmV0ID0gYXJyLT5vcHMt
PmdldChzLCAmcCk7Cj4gKwkJCWlmIChyZXQgPCAwKQo+ICsJCQkJZ290byBvdXQ7Cj4gKwkJfSBl
bHNlIHsKPiArCQkJaWYgKCFlbGVtX2J1Zikgewo+ICsJCQkJZWxlbV9idWYgPSBrbWFsbG9jKFBB
R0VfU0laRSwgR0ZQX0tFUk5FTCk7Cj4gKwkJCQlpZiAoIWVsZW1fYnVmKSB7Cj4gKwkJCQkJcmV0
ID0gLUVOT01FTTsKPiArCQkJCQlnb3RvIG91dDsKPiArCQkJCX0KPiArCQkJfQo+ICsJCQlyZXQg
PSBhcnItPm9wcy0+Z2V0X3N0cihlbGVtX2J1ZiwgJnApOwo+ICsJCQlpZiAocmV0IDwgMCkKPiAr
CQkJCWdvdG8gb3V0Owo+ICsJCQlzZXFfYnVmX3B1dG1lbShzLCBlbGVtX2J1ZiwgcmV0KTsKPiAr
CQl9Cj4gKwo+ICsJCS8qIE5vdGhpbmcgZ290IHdyaXR0ZW4gKGUuZy4gb3ZlcmZsb3cpIOKAlCBz
dG9wLiAqLwo+ICsJCWlmIChzLT5sZW4gPT0gYmVmb3JlKQo+ICAJCQlicmVhazsKPiArCj4gIAkJ
LyogUmVwbGFjZSB0aGUgcHJldmlvdXMgZWxlbWVudCdzIHRyYWlsaW5nIG5ld2xpbmUgd2l0aCBh
IGNvbW1hLiAqLwo+IC0JCWlmIChpKQo+IC0JCQlidWZmZXJbb2ZmIC0gMV0gPSAnLCc7Cj4gLQkJ
bWVtY3B5KGJ1ZmZlciArIG9mZiwgZWxlbV9idWYsIHJldCk7Cj4gLQkJb2ZmICs9IHJldDsKPiAt
CQlpZiAob2ZmID09IFBBR0VfU0laRSAtIDEpCj4gLQkJCWJyZWFrOwo+ICsJCWlmIChpICYmIHMt
PmJ1ZmZlcltiZWZvcmUgLSAxXSA9PSAnXG4nKQo+ICsJCQlzLT5idWZmZXJbYmVmb3JlIC0gMV0g
PSAnLCc7Cj4gIAl9Cj4gLQlidWZmZXJbb2ZmXSA9ICdcMCc7Cj4gLQlyZXQgPSBvZmY7Cj4gKwly
ZXQgPSAwOwo+ICBvdXQ6Cj4gIAlrZnJlZShlbGVtX2J1Zik7Cj4gIAlyZXR1cm4gcmV0OwoKU2lu
Y2UgeW91J3JlIGFsbW9zdCBjb21wbGV0ZWx5IHJld3JpdGluZyB0aGUgbG9naWMgaW4gcGFyYW1f
YXJyYXlfZ2V0KCksCkkgc3VnZ2VzdCB0aWdodGVuaW5nIGl0IHVwIGEgYml0LiBUaGUgZnVuY3Rp
b24gY291bGQgd2FybiBvciByZXR1cm4gYW4KZXJyb3Igd2hlbiBhIGtlcm5lbF9wYXJhbV9vcHM6
OmdldC9nZXRfc3RyKCkgY2FsbCBhZGRzIGEgc3RyaW5nIHRoYXQKZG9lc24ndCB0ZXJtaW5hdGUg
d2l0aCAnXG4nLCBzcGVjaWZpY2FsbHksIHdoZW4gdGhlIGNhbGwgYWRkcyBlaXRoZXIKYSB6ZXJv
LWxlbmd0aCBzdHJpbmcgb3IgYSBub24temVyby1sZW5ndGggc3RyaW5nIHRoYXQgZW5kcyB3aXRo
CmEgZGlmZmVyZW50IGNoYXJhY3RlciAodW5sZXNzIGFuIG92ZXJmbG93IG9jY3VycmVkKS4KClRo
ZSB1cGRhdGVkIGNvZGUgc2lsZW50bHkgc3RvcHMgdGhlIGxvb3Agd2hlbiBhIGdldCBjYWxsIHJl
dHVybnMKYSB6ZXJvLWxlbmd0aCBzdHJpbmcuIFNpbWlsYXJseSwgaGFuZGxpbmcgb2YgYSBzdHJp
bmcgbm90IHRlcm1pbmF0ZWQgYnkKJ1xuJyBpcyBoYWxmd2F5IHRoZXJlIGJlY2F1c2Ugb2YgdGhl
IGFkZGVkIGNoZWNrCiJzLT5idWZmZXJbYmVmb3JlIC0gMV0gPT0gJ1xuJyIuCgotLSAKVGhhbmtz
LApQZXRyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
