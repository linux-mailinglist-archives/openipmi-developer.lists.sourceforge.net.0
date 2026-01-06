Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E439CF891A
	for <lists+openipmi-developer@lfdr.de>; Tue, 06 Jan 2026 14:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BJsqHEmg5cgdHkFxb2ZjYKT7wLzoPHF4D/25O+/K59k=; b=R/XMEKXzH9QdSDEsrFUeeW55xG
	MEEKtqRGvQKRo74cJB7+n5Dx8uKeNiJQQ5g4uQwJ9xEFlp2RlWHo9EMYrRJsNeYghDBporGh/Hgz+
	8O+AFYTNBNhts8hTZXqLAueTlFA76p4Zz6uEUNDVSSaFR0R7I+gHMh9Kvg87MMi0UwAo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vd7NT-0006mP-SA;
	Tue, 06 Jan 2026 13:45:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vd7NS-0006mG-HU
 for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 13:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SRzOwUkk0m2mXhz/52vZoji+tjdO0ubXXl7EWqrmxe0=; b=nNrkzfLp01btkNWEUdPu/hyZwM
 JIqI2YA41SmW1GOE0LevDHlj8I8AD4bwCq1YoYAP0355ppkqAEld83/3mD4goF+XQ6ShglyRnuRdc
 w1x/8CCNFRjAJZcRDE6W+hyJspE3kQFGTsqbz6bY0sj8NkC/jjijowSFi3kazb6gEwMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SRzOwUkk0m2mXhz/52vZoji+tjdO0ubXXl7EWqrmxe0=; b=c
 7bajreaq9rVSJRLeqmOaiu/laO2rw/eHq4gZtO+vFn3NdKbjo8aL/Ny6yXPCbLv8BWS7du5ZRdeKM
 zwMW1TNK40nSs6zAnZ7QE47MUFrLaQ4z6M/BRZi+DrIZZv8C+GE11yn34/kNR2i8cS1oYM2aQauki
 pnXfTbAVQtWGJ0dA=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vd7NS-0008No-3z for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 13:45:38 +0000
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-64b8123c333so1485922a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Jan 2026 05:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767707126; x=1768311926; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=SRzOwUkk0m2mXhz/52vZoji+tjdO0ubXXl7EWqrmxe0=;
 b=ZZZb87qs9qgZsRjZb56BPYTHUs1f0FP02bjquYf9FSHdf9ENQ/XYff9qzA7UP6GABh
 KxZW97UiF0NvDXIPV5ebgez4jbs6+WakgGVAAmkWjeGaq8KzSN1XWq7SsPR78YOVMQR5
 +KFHCXbF7H4vCGztCLEqNpgoIXX34CYZfOg1QTXQO6dyv1I2nG9+KdavKKOrwoQiSb5s
 +UZkxWb/gIAeFJ1EPxmUFXdHdDCRDjdMQTjlwD+TkHdU3DsQ9Dza4xHzZ76UyRlKQKDL
 xcnyExkbSSb4sXC7myDyP467VDNMilLNV3QP0j90Tq77BrXjIjN1CC4PqYw/Wj69LtqH
 6jKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767707126; x=1768311926;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SRzOwUkk0m2mXhz/52vZoji+tjdO0ubXXl7EWqrmxe0=;
 b=KepdOaLUna7JqeP4mOKy+tHDE/t9I6Oq7wlSp6ZRxGEv3IQKJWp+yeg+DB7P4NFlx4
 hdz60eldTKiv7NYPTyXIS07QCqT6gcyux9NcxMrMAJYPnyTICFIcj6L2Ks1RPq9Mm6K0
 f1nBEb+iAWhOoMUJjULPfIR12djUdAeQZZrrLL/RKNe8TZ6OqHAL7v9h0v2om/8R/0ma
 mr7IAtFlsmqkOA8n7cdpWO7K47iCaMF+Kkp+GltVsNzsKSQSvZuw0EdZCAYK/Y/v2Z8B
 hNlorQdZ4icxCPF1xnSA9Vx6IYgyHH3MhHbnyHABT7Bm+dI3yGNibDOClPuEHD8iceud
 yFPg==
X-Gm-Message-State: AOJu0YzieYjWV/m1d4eCJBhn5Ne7TD9XC9U/18TBMIWOnbX/3cwCu2mA
 VdbzOGZf+LMpD+IFk0ZWNUPFQs8GGLRjiXo5DiN02dHY2yBsKXdJvwYy1PY+18THARY=
X-Gm-Gg: AY/fxX51HGdAax8VEkG37CbjhuMTetbWAipKJHznw079TPhChM7rldDPcOR98nRz3Km
 hIM2doVUNsKqLCtPyJYlsru6pnlTAZOIQH+e/VWSJmvEtgL0jaN2e9zMu7dN17QQhTjLleXRAdK
 kr1Lt5uk7HkpWQwbjlQj1YsR4B16Mo5DtxqhC9e29DDCKPqVYhtWR+XvDPIDONMzDU8hufL9Gcm
 Brs8zrpT6LhM+uQOgOjRKAhMGA2xQw3K+TmrPa+NxxdqZS0vXcqC843odbHIx/plYJQdPbhXkmq
 5jLjEWWoXK3qZp/z3079yRt+VgpCOm01iwGrLb8Xf09m5IAcZqBfdp2W33NhgvuPONaUIgAckHb
 9OS/M6TNlDwUMbNA4vFP4j3WGMe30jwtmlslhcL2c4LC8rLWQBB8S5g/4NsvFJxVbUeBf2uummo
 ujr6XGojpNBR9DQEGcX/qIS3seC1+qmsmOS0oQNsXN2HZyKsCu1tkrCDidRIBpmaxOluDdN+cFy
 Y8=
X-Google-Smtp-Source: AGHT+IHc/mwVnA0KQwF6OLW/6uzqAjivvVhAKwnkoq91rI/EvBj6q3a7F7jfBoSlAeXRDKwqihxSVg==
X-Received: by 2002:a05:6402:270c:b0:64d:2889:cf42 with SMTP id
 4fb4d7f45d1cf-65079218277mr2562827a12.2.1767707126171; 
 Tue, 06 Jan 2026 05:45:26 -0800 (PST)
Received: from mb-lenovo.home (83.10.224.155.ipv4.supernova.orange.pl.
 [83.10.224.155]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6507bf65c07sm2186762a12.23.2026.01.06.05.45.25
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jan 2026 05:45:25 -0800 (PST)
From: Michal Berger <michallinuxstuff@gmail.com>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  6 Jan 2026 14:45:26 +0100
Message-ID: <20260106134526.70207-1-michallinuxstuff@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently, whenever sim is restarted SEL's time_offset is
 reset to the initial reference point, which in case of a Linux's host is its
 btime. As a default ref, this may feel fine but in case there was [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
X-Headers-End: 1vd7NS-0008No-3z
Subject: [Openipmi-developer] [PATCH] [RFC] lanserv/bmc_storage: Make Set
 SEL Time persistent
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently,  whenever sim is restarted SEL's time_offset is reset to
the initial reference point, which in case of a Linux's host is its
btime. As a default ref, this may feel fine but in case there was an
explicit Set SEL Time cmd sent during sim's runtime it feels
reasonable to expect the offset to remain the same across subsequent
resets.

The following proposal is to save the offset within the SEL file
and slurp it in whenever BMC is reinitialized (similarly to already
existing "last_{add,erase}_time" params).

In case host is rebooted the offset will still "break" (i.e. go
backwards) but the discrepancy wouldn't be that big as going
back to "pre-init" timestamp (which according to ipmitool is
anything < 0x20000000) - I believe this case would be also
less frequent compared to how often sim can be restarted in
general.

Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
---
 lanserv/bmc_storage.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lanserv/bmc_storage.c b/lanserv/bmc_storage.c
index cb1678d9..021d0118 100644
--- a/lanserv/bmc_storage.c
+++ b/lanserv/bmc_storage.c
@@ -134,6 +134,8 @@ handle_sel_time(const char *name, long val, void *cb_data)
 	mc->sel.last_add_time = val;
     else if (strcmp(name, "last_erase_time") == 0)
 	mc->sel.last_erase_time = val;
+    else if (strcmp(name, "time_offset") == 0)
+	mc->sel.time_offset = val;
     return ITER_PERSIST_CONTINUE;
 }
 
@@ -183,6 +185,10 @@ rewrite_sels(lmc_data_t *mc)
     if (err)
 	goto out_err;
 
+    err = add_persist_int(p, mc->sel.time_offset, "time_offset");
+    if (err)
+	goto out_err;
+
     for (e = mc->sel.entries; e; e = e->next) {
 	err = add_persist_data(p, e->data, 16, "%d", e->record_id);
 	if (err)
@@ -663,6 +669,8 @@ handle_set_sel_time(lmc_data_t    *mc,
 
     rdata[0] = 0;
     *rdata_len = 1;
+
+    rewrite_sels(mc);
 }
 
 /*
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
