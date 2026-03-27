Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBx2LA3Exmm8OQUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Mar 2026 18:53:17 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D3348ACA
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Mar 2026 18:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:MIME-Version:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BnGTtyKa84Ht75dwqIppyZZMvbkzf8xKPoX0xO5XkXU=; b=VTmqTqynu0wnxfN3LxMF/qv49Z
	i5zsKTWMvVeL+Y40qehHfJI0wen6jSWrdtxjXvg9PMyMkQOc/4hFV4ciTyMh0MwkOVdfvS+bKuN/k
	n0gpJKNzPzhQ1mCXxOdDgwBzp447r9M5elsV+orl/RVYP8bskMli1S2TmVj8Thc9Hrmo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w6BMm-0005fM-VX;
	Fri, 27 Mar 2026 17:53:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ustc.gu@gmail.com>) id 1w67QV-0005xU-5G
 for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Mar 2026 13:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tZms32AMXN/AmcpUuOOCmOM7b07bBIpZ39KVWJt5CaE=; b=KczMibYzg8WWipgUaYxb6y/Prb
 v4ZHrFi5A8mOgoakS+VWMFyzs+g/SbhXHYYCQ/dlUi5XcZKbZaSD7bOP6jRQzGfKFPD5iycgUeCEP
 ulWOgMm875uPjSzN826ZT6thJVowqrE8GFHMUsRxnyYdrYNM7vfwpHZ5LZ98sBvivPtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tZms32AMXN/AmcpUuOOCmOM7b07bBIpZ39KVWJt5CaE=; b=M
 AsublV1ZSerj5uBNkI356EI5mFrzO/NP5sLyj2spj5OR+FI8Bi/Ds4Svqb7GizjFJhn9sYQykdG+j
 ED2Sjl56dPutK+NhFtC2LzX8pfsSjbM59yxipnw37j3cn6WHxPpBk3Xv1SV53UlE4Zg1fPUq2GRC3
 O2bXH5tMXT/9/Nbs=;
Received: from mail-pg1-f175.google.com ([209.85.215.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w67QU-00054U-LC for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Mar 2026 13:40:38 +0000
Received: by mail-pg1-f175.google.com with SMTP id
 41be03b00d2f7-c739d32b72cso1402847a12.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 27 Mar 2026 06:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774618833; x=1775223633; darn=lists.sourceforge.net;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tZms32AMXN/AmcpUuOOCmOM7b07bBIpZ39KVWJt5CaE=;
 b=qnBCn0MmSoeUWNgFplNg2GQNwtjfSoNz/+fiRHye2ISQBE7+FL9YHnA5N4rxIupCp9
 V2InLlmvunQtZ6lehMDOMcp6J8TQx9ESsmXXkcUaQEzRvdZOLECX6JmXFDcMhp26RuEn
 QLVu0IrkNVSSCjlloQKNRZa9l0w/z4aMlkdzpRD2FBKC/nX2bhnXNk6rfi4cpp6dnurR
 VyEBPQd6fng2ekfkyNNSF3lOaeCZr3Y/IdJQRsZR/vQRBM0jDJlfGHNyTbg+djxsPjFl
 Je6vIdYD4USsvr7wZP1oYrMZX8+zIwXddtZanvulvTvy1uvFu8AmzxEVgZndRaSQvqXp
 uDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774618833; x=1775223633;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tZms32AMXN/AmcpUuOOCmOM7b07bBIpZ39KVWJt5CaE=;
 b=BVmvmRRwpDkUBubqGwW4PPhL9TCZUSug7aZtoBi6WXdP+JBGwzyZuWoABp3v2I+lBQ
 bw5n5hOV/eSODZQGTxZOoclxa4BTVc2iHD6bdxQBNzX33R2ZekKykTwZKBuMoDQ3N72k
 Yd1sgv6bdILd0SqG/oWVgBnCGA9cPQ5xi/PeUghMrD7mjRXkqTUigd7SKyBU7TBa38AJ
 qcSbzut1zAFHOcg8/5LEFo1Dfy/Br0OPClHWzNHz6c6K6ZyAIaJ5XDn/vVVIffRSK/BB
 DXmPT4zwyjJLTuSCvZifxGyq+Vx0eebkvTEBXiPWUaN+gc0ybmkkVg0Bsfs/MofhGciE
 14lw==
X-Gm-Message-State: AOJu0Yz8sgUkgPkcvcY0LAqPA3nv2sr6ITpxrZKuH1R12eKiLZXDxo9/
 ybA9vYLN7Bbor93Dxnxumm9dF62mYDMC+k+skTZrvM+LlFv/ZHD283vg
X-Gm-Gg: ATEYQzzWguVS9f4902xhxFP8OtJATWP6bmVujreFVHBZqftFWeIhAkEt0ABuU0lWP5q
 eeDLy5GGqfgd8HrdYXREPQJki/K8K0vmaJPwyGNVBqHWIDk5BzXUp47I8H83hizb39Unzi6BCgF
 9MvfupGF0ZNMRNsTC+fFMYJ3pc7lfhuTTGnz9kROfJtFtw4C5KTQ/gZDDF+Ns9eNw3MplgEUYwQ
 R+O68g7uUQavnF6brDfJTz6p3zKVkvb7rA/NQBGISudg8mi4jkxcqjr0tJly3XkE76jqvS8FWHg
 c3WofUAWwi7B+PHuI40IuAECDb8N8nAMPIuqFuV5xmcB9BvKJLyd7prBABHPGZnUOtgBPqNBxTa
 REHH4BrVaVtrzyz+2DrMNbzoGdId1acS1SDA/cfmrMcnTu073LGUgl/d+a1Tns8P+WCJTIAx5N6
 mZU+1eG05UWrrbx+dSEuCUyAyZ1K/ypeCSnTeX
X-Received: by 2002:a05:6a21:33a0:b0:398:9662:110e with SMTP id
 adf61e73a8af0-39c8780d9f0mr3250210637.8.1774618832802; 
 Fri, 27 Mar 2026 06:40:32 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.167.147.240])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c76737f28d6sm5448685a12.6.2026.03.27.06.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2026 06:40:32 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Fri, 27 Mar 2026 21:40:30 +0800
MIME-Version: 1.0
Message-Id: <20260327-ipmi-v1-1-d4a4417140b2@gmail.com>
X-B4-Tracking: v=1; b=H4sIAM2IxmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYyNz3cyC3ExdEwtTw9TEZDNjA9M0JaDSgqLUtMwKsDHRsbW1AF6G/WN
 WAAAA
X-Change-ID: 20260327-ipmi-4851eac6305f
To: Corey Minyard <corey@minyard.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774618832; l=1115;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=Zq+m9dJVIo2v68WullWUqqT5ifZ/SvtweJdsXJz+yJY=;
 b=o+8RrY2Bi/ux+w/j5Me1BbBOrT+MyrSdxl59uizXeiUi/HvaSnO7ZCpn57Y3tsF3o8NpH8EKe
 40IqXLbo1BkCXF1hszpqm7OFh81Gi0N/KQhJ76TAijIiycyEdwt11vP
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When device_create_file() for maintenance_mode_devattr fails,
 the error handler only removes nr_users_devattr but forgets to remove
 nr_msgs_devattr, 
 causing a sysfs file leak. Fixes: 627118470fcc ("ipmi: Add a maintenance
 mode sysfs file") Signed-off-by: Felix Gu ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 1 + 1 file changed, 1 insertion(+) 
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [ustc.gu(at)gmail.com]
 1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
 [223.167.147.240 listed in dnsbl-2.uceprotect.net]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.175 listed in wl.mailspike.net]
X-Headers-End: 1w67QU-00054U-LC
X-Mailman-Approved-At: Fri, 27 Mar 2026 17:53:03 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Fix sysfs file leak on
 maintenance_mode creation failure
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Felix Gu <ustc.gu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:ustc.gu@gmail.com,m:ustcgu@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ustcgu@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.686];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ustcgu@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: EB0D3348ACA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When device_create_file() for maintenance_mode_devattr fails, the error
handler only removes nr_users_devattr but forgets to remove
nr_msgs_devattr, causing a sysfs file leak.

Fixes: 627118470fcc ("ipmi: Add a maintenance mode sysfs file")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 869ac87a4b6a..f59db5df69da 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3734,6 +3734,7 @@ int ipmi_add_smi(struct module         *owner,
 	sysfs_attr_init(&intf->maintenance_mode_devattr.attr);
 	rv = device_create_file(intf->si_dev, &intf->maintenance_mode_devattr);
 	if (rv) {
+		device_remove_file(intf->si_dev, &intf->nr_msgs_devattr);
 		device_remove_file(intf->si_dev, &intf->nr_users_devattr);
 		goto out_err_bmc_reg;
 	}

---
base-commit: 66ba480978ce390e631e870b740a3406e3eb6b01
change-id: 20260327-ipmi-4851eac6305f

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
