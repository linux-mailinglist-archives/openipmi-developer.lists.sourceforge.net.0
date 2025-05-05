Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF02AA96DB
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 May 2025 17:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0OAxDmrnWAH9xvhrNXmn4lqWrAz0lec38GWys6ngs/8=; b=hmBIC3xz0YW6Z4kOdzK1tRcFM4
	yR1K3Sw4uMsSTHWND8YlBkrYVrc7NR1DmNw8EM6i6QBqHIeTteOvekdOBhl9qHG3GLAtjFc5XyKpy
	dieNql6F9e7U1XpWJvWq2l2Dlq5zG7ItHK9Bl82v81fdxlIP6HxCGDhk7XMjVV/zDdhY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uBxMS-0002OG-7j;
	Mon, 05 May 2025 15:04:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1uBxMG-0002NP-3a
 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 May 2025 15:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FnbCwzPudDkiSSrhyT+WBIXfqqkwVhocBR1cTw5NLso=; b=NkAwmqMkD+1XT/VZyQLjmQvpv7
 FKN/4N+wDKh8W6T13KS1rey8zybOHZAPwSE4TZLGcHMj6ZtJTM4fMmIGZoCWtBxn91Bt0Ms0BYoOd
 9OrgttlUY0hhWkN7vTSRyCGsBVlXiuklrkFF/khWuFpxw4ZxE5rNIwKD4nXVQqlUkCNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FnbCwzPudDkiSSrhyT+WBIXfqqkwVhocBR1cTw5NLso=; b=d
 4vLsJ2jP0yVBNGlSRCoGW6P7JniO2bRgqupE3wKGDljDkjojuNZ2F6nBVopIhdzwZPaRi1a0Y8Sf/
 09hg7xHZ62R2owc+NQieEmYTPZjjR5zllXaQAssf1eYyFllTW5mT4L+C7s+wObhYSM45SuHGCaMnm
 cbZ7LpMLg5CdCJak=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uBxM0-0000Pq-76 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 May 2025 15:03:52 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-3105ef2a06cso42861531fa.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 May 2025 08:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1746457404; x=1747062204; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FnbCwzPudDkiSSrhyT+WBIXfqqkwVhocBR1cTw5NLso=;
 b=GHJ167rbmO5HDJnHhmem33NnR1a1z9JdMcXPJtmJkl3D12J+xunXmhI06CVIpEaGOa
 a3hysvHD8pHjmnd1rXWDts6UkSPcQXkttkZ03E8V79GIW+rTfFsLixFNgqt4ucTOgy3R
 s4oNSKZCipJiALgXk5XDYOMrRTOlOK+wFQ2rVXGe+HVVSwdySICHX1zEBnzeS5QN7Dn5
 VDTCmlUlz+Tg9JcHQUkv/DY+wdJMuknZdPingma5BlmpUD/Xn8+80E/T2MB3+StXxv7l
 X4UDcUU70Jqkg4D4cqg7q/29xMHDGrgip57HesEJ6BJliZLtGNaSscjQTziLk5rC9Q1h
 do5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746457404; x=1747062204;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FnbCwzPudDkiSSrhyT+WBIXfqqkwVhocBR1cTw5NLso=;
 b=cRqtt731OkWuHlJiJDFmxh3Da+ApQ1EVgxnv2UWp9pJCu6DcAPE40MbMR0KoTRbAJE
 jRjlDn7pMJotvz7Pqvf4ZJWQxf/0/LTPedA2SFn5MaiTvJ/KFvTVQ6AZckl4FtqqSOct
 psqQnmepsV3WCdHsdLOgSx1/gZNQ3ES1g+EEDHjLHdMP7ScRaeHD+bWwdf1Y1wTqgw6b
 9Z46o83UTsUZxrbjuyVxWwdu0GK89jOJRAps18GPJ2kfsavxi+KWzrq8saZ288acdqE+
 IAt/3mzAFzJ2nk/9qRMmKG24lWu8zsdJ100/YK396lipDINeUaxa5dduGHXo/vSwlfok
 YJ0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCoe7nR3Ke97pRXj6+8czTjqersBmpvZHIJbROnqAeb96HGvkgHxNjBc6dQJtawzJ37xjML+AE6cZpO9j5xThmk5k=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw0lig40REIsjp2sCJWso5EoRhc7WmRQ4IbK41P8omgIZBDS1CK
 AIUVDKM6MDRZ+9IDHvxMS2dFQv0uCVryKE6PvzJovsNguHWvM6N4l7JgaiIUANbPMYAoE3Jj+BZ
 Mt/4=
X-Gm-Gg: ASbGncuHcLNhjgSWv6LORwrF/0lH0pcY6H+6Uh8MY6+x9d0d8V4g4blrKt15KdlSZ9S
 h6tUtBbb699clZIIAaULGSSopQ9Kn/6zD4iipsO2TwhAMLQ00iKhT36y4O4gnFWoL9Ttofo6w9n
 NS4MreNDwYF3Zr+JKr+C1/No56gij46QAys2Jcgy2h04My6maDeNeBRe3G+U6ois6cizVThgQzV
 n0Lz9FQM1/YI2UFKF8rzcKtYsheH3T8bx6aOXBd3O1884b6f3Hvv2mJHBlpApV5b5ER02+e64gt
 KhsAarRwTlxxLBydZeIvTWssmswylIjfqAcMQgVO/Ua4+g==
X-Google-Smtp-Source: AGHT+IGeLrfju5zWeAYtYvyAEYGbgnW8bF7ZkzBNUfY0zuisIpuKky3gv6rm7707Hc90jSISsdGZYw==
X-Received: by 2002:a05:6000:1946:b0:3a0:a09b:6850 with SMTP id
 ffacd0b85a97d-3a0a09b68c6mr4246077f8f.45.1746455660315; 
 Mon, 05 May 2025 07:34:20 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a099ae0cd6sm10499390f8f.5.2025.05.05.07.34.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 May 2025 07:34:20 -0700 (PDT)
Date: Mon, 5 May 2025 17:34:15 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Corey Minyard <cminyard@mvista.com>
Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The "intf" list iterator is an invalid pointer if the correct
 "intf->intf_num" is not found. Calling atomic_dec(&intf->nr_users) on and
 invalid pointer will lead to memory corruption. We don't really need to call
 atomic_dec() if we haven't called atomic_add_return() so update the if
 (intf->in_shutdown) path as well. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
X-Headers-End: 1uBxM0-0000Pq-76
Subject: [Openipmi-developer] [PATCH] ipmi:msghandler: Fix potential memory
 corruption in ipmi_create_user()
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The "intf" list iterator is an invalid pointer if the correct
"intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
and invalid pointer will lead to memory corruption.

We don't really need to call atomic_dec() if we haven't called
atomic_add_return() so update the if (intf->in_shutdown) path as well.

Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8b2c3fca9c4c..064944ae9fdc 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1240,12 +1240,12 @@ int ipmi_create_user(unsigned int          if_num,
 	}
 	/* Not found, return an error */
 	rv = -EINVAL;
-	goto out_kfree;
+	goto out_unlock;
 
  found:
 	if (intf->in_shutdown) {
 		rv = -ENODEV;
-		goto out_kfree;
+		goto out_unlock;
 	}
 
 	if (atomic_add_return(1, &intf->nr_users) > max_users) {
@@ -1293,6 +1293,7 @@ int ipmi_create_user(unsigned int          if_num,
 	} else {
 		*user = new_user;
 	}
+out_unlock:
 	mutex_unlock(&ipmi_interfaces_mutex);
 	return rv;
 }
-- 
2.47.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
